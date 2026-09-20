# Manage SR-22 Filing

Certificates of financial responsibility filed with a state DMV on behalf
of a rated driver. Filing status is coupled to policy status, so
cancellations trigger an SR-26 (cancel-policy.feature.md).

## Cancellation triggers an SR-26 withdrawal @v1 [published]

- **Given** an active SR-22 filing on a policy cancelled effective October 3
- **When** the cancellation is processed
- **Then** an SR-26 is transmitted to the DMV within 10 days of the cancellation date
- **And** the filing status is changed to withdrawn

## DMV rejection is surfaced to the agent for correction @v1 [proposed]

- **Given** a transmitted filing rejected by the DMV for a driver license number mismatch
- **When** the rejection acknowledgement is received
- **Then** the filing status is set to rejected
- **And** a task is created for the agent with the DMV reason code
- **And** the $25 fee is reversed until a corrected filing is accepted

## Filing is transmitted to the DMV on the day of issue @v1 [published]

- **Given** a bound Illinois auto policy naming Terrence Boyle as a rated driver
- **When** the insured requests an SR-22 for Terrence Boyle
- **Then** the filing is transmitted electronically to the Illinois Secretary of State the same business day
- **And** a $25 filing fee is added to the policy
- **And** a copy of the certificate is mailed to the named insured

## Filing is unavailable in a state that does not require it @v1 [published]

- **Given** a policy issued in Pennsylvania
- **When** an SR-22 is requested
- **Then** the request is declined with reason "state does not accept financial responsibility filings"
- **And** the agent is directed to the state's alternative proof requirements

## Filing persists across a renewal without reissue @v1 [published]

- **Given** an SR-22 filed for a three-year court-ordered period ending 2028-05-14
- **When** the policy renews on 2027-01-01
- **Then** the existing filing remains in force and is not retransmitted
- **And** the filing fee is not charged again at renewal

## Liability below the state minimum blocks the filing @v1 [proposed]

- **Given** a policy with bodily injury limits of 20/40
- **And** Illinois requires minimum limits of 25/50/20 for a filing
- **When** the SR-22 is prepared
- **Then** the filing is blocked
- **And** the insured is offered an endorsement raising the limits to 25/50/20
