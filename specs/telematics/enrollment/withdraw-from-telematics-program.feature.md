# Withdraw From the Telematics Program

An insured may leave DriveRight at any time. Withdrawal stops collection and
changes how the discount is treated at the next renewal
(enroll-in-telematics-program.feature.md).

## Collected trip data is purged on request @v1 [published]

- **Given** a withdrawn participant who requests deletion of their driving data
- **When** the request is processed (compliance/privacy/handle-data-subject-request.feature.md)
- **Then** raw location traces are deleted within 30 days
- **And** the aggregate score used to set the renewal premium is retained as a rating record

## Non-renewal of the policy closes the enrollment @v1 [published]

- **Given** an enrolled policy that is cancelled mid-term
- **When** the cancellation takes effect
- **Then** the enrollment is closed with reason "policy terminated"
- **And** device return instructions are included in the cancellation packet

## Re-enrollment is restricted for one term @v1 [proposed]

- **Given** a policy that withdrew from DriveRight 45 days ago
- **When** the insured attempts to re-enroll
- **Then** re-enrollment is refused until the next renewal
- **And** the earliest eligible date is shown

## Voluntary withdrawal stops collection immediately @v1 [published]

- **Given** an enrolled policy in the middle of its monitoring period
- **When** the insured withdraws through the app
- **Then** trip collection stops the same day
- **And** the participation discount remains for the balance of the current term

## Withdrawal after a completed monitoring period keeps the earned discount @v1 [proposed]

- **Given** a driver who completed a full 90-day monitoring period and earned a 14% performance discount
- **When** the driver withdraws before renewal
- **Then** the earned discount applies for the upcoming term
- **And** no further scoring is performed

## Withdrawal removes the performance discount at renewal @v1 [published]

- **Given** a withdrawal recorded 30 days before the renewal effective date
- **When** the renewal is rated (policy/auto-policy/renew-policy.feature.md)
- **Then** no telematics discount is applied
- **And** the renewal offer explains the removed credit as a line item
