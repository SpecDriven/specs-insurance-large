# Onboard an Agency

Acme appoints independent agencies to place personal and commercial
business. Onboarding gathers the agency's E&O coverage, tax details, and
ownership before an appointment is issued
(manage-agency-appointment.feature.md).

**Assigned:** Dana Whitfield

## Agency submits a complete onboarding packet @v1 [published]

- **Given** a prospective agency in Ohio with an active resident agency license
- **And** an E&O certificate showing $1,000,000 per claim and $3,000,000 aggregate
- **When** the agency submits its onboarding packet with a signed W-9
- **Then** the agency record is created in pending-appointment status
- **And** a distribution manager is assigned to review within 5 business days

## Duplicate tax identification number is rejected @v1 [published]

- **Given** an existing appointed agency using federal tax ID 34-8871209
- **When** a second onboarding packet arrives with the same tax ID
- **Then** the submission is rejected as a duplicate
- **And** the submitter is directed to add a branch location to the existing agency instead

## Insufficient errors and omissions limits hold the file @v1 [proposed]

- **Given** a prospective agency whose E&O policy carries a $250,000 per-claim limit
- **When** the onboarding packet is reviewed
- **Then** the packet is held for deficiency
- **And** the agency is told the minimum per-claim limit is $500,000
- **And** the file auto-closes if no corrected certificate arrives within 60 days

## Ownership change during onboarding restarts the review @v1 [proposed]

- **Given** an agency in pending-appointment status
- **When** the agency reports that a new owner acquired 30% or more of the equity
- **Then** the regulatory review is reopened for the new owner
- **And** the 5-business-day review clock restarts

## Principal with a prior license revocation is declined @v1 [published]

- **Given** an agency principal whose Michigan producer license was revoked in 2021
- **When** the background and regulatory review completes
- **Then** onboarding is declined
- **And** the decline reason "adverse regulatory history" is recorded on the agency record

## Production commitment sets the initial agency tier @v1 [published]

- **Given** an agency that projects $750,000 of new written premium in its first year
- **When** the distribution manager confirms the production commitment
- **Then** the agency is assigned the Silver tier
- **And** the tier drives the starting commission schedule (set-commission-schedule.feature.md)

| tier     | projected new written premium | new business commission | contingent eligible |
| -------- | ----------------------------- | ----------------------- | ------------------- |
| Bronze   | under $250,000                | 10%                     | no                  |
| Silver   | $250,000 – $1,000,000         | 12%                     | yes                 |
| Gold     | over $1,000,000               | 14%                     | yes                 |

## Welcome kit is issued on approval @v1 [proposed]

- **Given** an agency approved by the distribution manager
- **When** the approval is recorded
- **Then** a welcome kit with portal credentials and the agency code is emailed to the principal
- **And** portal access is provisioned for the principal only (../agent-portal/manage-portal-user-access.feature.md)
