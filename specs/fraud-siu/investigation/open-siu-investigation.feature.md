# Open SIU Investigation

Accepting a fraud referral into the Special Investigations Unit, setting
the investigative plan, and meeting mandatory reporting duties.

**Assigned:** Dana Whitfield

## Claim handling continues during the investigation @v1 [proposed]

- **Given** an open SIU investigation on a first-party theft claim
- **When** the statutory prompt-payment clock runs
- **Then** the adjuster continues good-faith handling and issues required status letters
- **And** any delay beyond the statutory window requires a documented extension basis

## Conflict of interest removes an investigator @v1 [proposed]

- **Given** an investigator whose relative is named as a witness on the claim
- **When** the assignment is made
- **Then** the investigator is recused and the file is reassigned
- **And** the recusal is recorded in the investigation log

## Mandatory state reporting on articulable suspicion @v1 [published]

- **Given** an accepted investigation with articulable suspicion of a fraudulent claim
- **When** the investigator confirms the indicators
- **Then** a report is filed with the state fraud bureau within the statutory period
- **And** the report is made without notifying the claimant of the referral

## Payment hold is time-limited @v1 [published]

- **Given** a payment hold placed at referral
- **When** 60 days pass without a completed investigation
- **Then** the hold is reviewed by the SIU manager and either extended with cause or released

## Referral is accepted and an investigator is assigned @v1 [published]

- **Given** a claim referred with a fraud risk score of 87 and a short-inception indicator
- **When** the SIU triage desk reviews the referral
- **Then** the referral is accepted and an investigator is assigned within 3 business days
- **And** an investigative plan listing the indicators to be resolved is documented

## Referral is declined back to the adjuster @v1 [published]

- **Given** a referral whose only basis is a late-reported claim
- **When** the triage desk reviews it
- **Then** the referral is declined with a written explanation
- **And** the adjuster is directed to complete enhanced documentation instead

## Surveillance requires written authorization @v1 [proposed]

- **Given** an investigative plan proposing 3 days of surveillance on a claimant
- **When** the vendor engagement is requested
- **Then** the SIU manager's written authorization and a documented predicate are required
- **And** surveillance of the claimant's residence interior is prohibited
