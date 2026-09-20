# Start a Self-Service Endorsement

Lets the insured initiate common coverage changes from the portal.
Simple changes bind straight through; anything touching underwriting
routes to a referral queue (policy/auto-policy/endorse-policy.feature.md).

## Adding a driver with a poor record is referred @v1 [published]

- **Given** an insured adding a driver whose MVR shows two at-fault accidents in the past 3 years
- **When** the endorsement is submitted
- **Then** the change is held for underwriting referral rather than bound
- **And** the insured is told to expect a decision within 2 business days

## Backdating beyond the allowed window is refused @v1 [published]

- **Given** an insured requesting an effective date 21 days in the past
- **And** the self-service backdate limit is 5 days
- **When** the date is entered
- **Then** the request is refused and the earliest permitted date is offered
- **And** earlier dates may be requested only through a representative

## Endorsement is blocked while a claim is under SIU review @v1 [proposed]

- **Given** a policy with an open claim referred to the special investigations unit
- **When** the insured attempts a coverage-increasing endorsement
- **Then** self-service is disabled for that policy
- **And** the insured is routed to a service representative without the SIU reason being disclosed

## Incomplete endorsement is saved as a draft @v1 [proposed]

- **Given** an insured who abandons an endorsement after selecting the new vehicle
- **When** the insured returns within 14 days
- **Then** the draft is restored with the prior selections intact
- **And** the premium is re-quoted because rates may have changed since the draft was saved

## Premium impact is quoted before the insured commits @v1 [proposed]

- **Given** an insured adding a 2019 Ford Transit to a personal auto policy
- **When** the coverage selections are complete
- **Then** the additional premium and the revised installment amounts are displayed
- **And** the endorsement is not bound until the insured confirms the quoted amount

## Raise a deductible straight through @v1 [published]

- **Given** an in-force auto policy with a $500 collision deductible
- **When** the insured raises the deductible to $1,000 from the portal
- **Then** the endorsement binds immediately with the return premium shown before submission
- **And** the amended declarations page is available within the session
