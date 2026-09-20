# Determine Fault and Liability

Liability investigation for auto claims. The fault decision drives
subrogation, deductible waiver, and the loss's effect on renewal
(policy/auto-policy/renew-policy.feature.md).

## Comparative negligence split in a modified-comparative state @v1 [published]

- **Given** a loss in Georgia where the insured was speeding and the claimant made an unprotected left turn
- **When** the adjuster applies the state's 50% modified comparative negligence bar
- **Then** fault is allocated 70% claimant and 30% insured
- **And** the claimant's damages are reduced by 70% before payment
- **And** the allocation rationale and supporting evidence are documented in the file

| state          | negligence rule            | claimant bar |
| -------------- | -------------------------- | ------------ |
| Georgia        | Modified comparative       | 50%          |
| California     | Pure comparative           | none         |
| Virginia       | Contributory negligence    | any fault    |
| North Carolina | Contributory negligence    | any fault    |

## Contributory negligence bars a claimant entirely @v1 [published]

- **Given** a Virginia loss where the claimant is found 15% negligent
- **When** the liability decision is issued
- **Then** the claimant's bodily injury and property damage claims are denied in full
- **And** the denial letter cites the state's contributory negligence rule

## Disputed traffic signal with conflicting statements @v1 [proposed]

- **Given** both drivers claim a green light and the police report assigns no citation
- **When** no independent witness or camera footage is located within 14 days
- **Then** liability is set to 50/50 as an undetermined-fault resolution
- **And** each carrier pays its own insured's physical damage
- **And** the insured is told the deductible will not be waived

## Fault reversed after dashcam footage surfaces @v1 [proposed]

- **Given** a prior determination of 60% insured fault
- **When** the insured produces dashcam footage showing the claimant crossed the centerline
- **Then** the determination is reopened and revised to 0% insured fault
- **And** any deductible previously applied is refunded to the insured within 10 business days

## Liability decision issued after the statutory deadline @v1 [published]

- **Given** a state fair claims practices rule requiring a liability position within 30 days of FNOL
- **When** day 30 passes without a decision
- **Then** a written extension notice stating the reason for delay is sent to the claimant
- **And** a compliance exception is logged for the claims quality review

## Phantom vehicle with no contact @v1 [proposed]

- **Given** the insured swerved to avoid an unidentified vehicle and struck a guardrail with no physical contact
- **When** the adjuster evaluates uninsured motorist liability
- **Then** corroboration by an independent witness is required before the UM claim proceeds (handle-uninsured-motorist-claim.feature.md)
- **And** the collision coverage claim is processed in the meantime

## Rear-end impact presumes the following driver at fault @v1 [published]

- **Given** a two-vehicle collision where the adverse driver struck the insured from behind
- **When** the adjuster completes the liability investigation
- **Then** liability is assessed at 100% against the adverse driver
- **And** the insured's collision deductible is waived pending subrogation recovery
