# Record Bodily Injury Claim

Intake for third-party bodily injury exposures arising from an auto or
premises loss. The underlying loss is already on file
(claims/auto-accidents/record-car-accident.feature.md); this feature opens
the BI exposure and sets the first reserve.

## Aggregate limit exhausted across claimants @v1 [proposed]

- **Given** a policy with a $300,000 per-occurrence aggregate and five open BI exposures
- **When** cumulative evaluated exposure reaches $312,000
- **Then** no further indemnity reserve is added beyond the $300,000 aggregate
- **And** the claim is referred to the coverage unit for an interpleader recommendation

## Each occupant gets a separate exposure @v1 [published]

- **Given** a rear-end loss with four occupants in the claimant vehicle
- **When** all four occupants present injury claims
- **Then** four distinct BI exposures are opened, one per claimant
- **And** each exposure carries its own reserve and its own adjuster diary

## Intentional-act exclusion bars the claim @v1 [published]

- **Given** a police report showing the insured deliberately struck the claimant's vehicle
- **When** the BI exposure is reviewed against form CA 00 01 exclusion 2.a.
- **Then** coverage is denied for the bodily injury exposure
- **And** a denial letter citing the intentional-act exclusion is mailed to the claimant
- **And** the reserve is reduced to $0 with LAE left open for defense

## Late notice past the reporting window @v1 [proposed]

- **Given** a loss date of March 2, 2024 in a state with a two-year statute
- **When** a claimant first reports injury on August 19, 2026
- **Then** the exposure is opened under a reservation of rights
- **And** a late-notice prejudice analysis is diaried for the coverage attorney

## Minor claimant requires court approval @v1 [proposed]

- **Given** a BI claimant who is 9 years old
- **When** the exposure is opened
- **Then** the file is marked as requiring a friendly suit or court-approved minor's compromise
- **And** settlement authority is withheld until guardian ad litem documentation is received

## Open a BI exposure for a claimant named in the loss report @v1 [published]

- **Given** an open auto liability claim with the insured at fault
- **When** the adjuster records a third-party claimant who reports neck and back injury
- **Then** a bodily injury exposure is opened under the policy's Coverage A
- **And** an initial indemnity reserve of $7,500 and an LAE reserve of $1,500 are posted
- **And** the exposure is linked to the claimant's vehicle occupancy on the loss report

## Per-person limit caps a single claimant @v1 [published]

- **Given** a policy with 100/300 bodily injury limits
- **When** a single claimant's demand is evaluated at $145,000
- **Then** the exposure is capped at the $100,000 per-person limit
- **And** the file is flagged as a potential excess exposure
- **And** the named insured receives an excess-of-limits letter within 5 business days
