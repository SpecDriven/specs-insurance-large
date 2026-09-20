# Refer a Case to the State Fraud Bureau

Where the Special Investigations Unit develops a reasonable belief that
insurance fraud has occurred, most states require a report to the fraud
bureau on a prescribed form and within a fixed period.

## Bureau declines to open a file @v1 [proposed]

- **Given** a transmitted referral acknowledged and then declined by the bureau
- **When** the decline is recorded
- **Then** the referral is closed with disposition "declined by bureau"
- **And** the SIU file remains open for civil recovery consideration

## Claim handling continues independent of the referral @v1 [proposed]

- **Given** an open first-party claim referred to the fraud bureau
- **When** the referral is transmitted
- **Then** the claim investigation continues on its own timeline
- **And** the referral alone is not recorded as a basis for delaying payment

## Immunity notice accompanies the referral @v1 [published]

- **Given** a referral being transmitted to a state fraud bureau
- **When** the transmission is prepared
- **Then** the statutory immunity provision for good-faith reporting is cited in the cover letter
- **And** the referral is marked confidential and excluded from claim file productions

## Reasonable belief triggers a mandatory report @v1 [published]

- **Given** an SIU investigation finding a staged rear-end collision with three prior linked claims
- **When** the investigator records a determination of reasonable belief
- **Then** a referral to the state fraud bureau is created
- **And** the referral must be transmitted within 60 days of the determination

## Referral package includes the supporting evidence @v1 [published]

- **Given** an approved referral for a New Jersey claim
- **When** the package is assembled
- **Then** the NAIC referral form, recorded statements, photographs, and the claim chronology are attached
- **And** the investigator of record is named as the contact

## Weak indicators do not meet the referral standard @v1 [proposed]

- **Given** a claim with two soft fraud indicators and no corroborating evidence
- **When** the SIU supervisor reviews the file
- **Then** no referral is created
- **And** the rationale for not referring is documented in the SIU file
