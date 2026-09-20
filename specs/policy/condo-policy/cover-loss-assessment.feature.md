# Cover Condo Loss Assessment

Loss assessment coverage responds when the association levies a special
assessment against unit owners for a loss that would be covered under the
unit owner's own policy perils.

## Assessment for a covered peril is paid to the limit @v1 [published]

- **Given** an HO-6 with a $50,000 loss assessment limit
- **And** the association levies a $7,400 assessment after a covered roof loss
- **When** the insured submits the assessment notice and the association's resolution
- **Then** the assessment is paid in full less the $250 loss assessment deductible
- **And** payment is made directly to the association at the insured's direction

## Assessment for an excluded peril is denied @v1 [published]

- **Given** an assessment levied to fund earthquake repairs to the common elements
- **And** earthquake is excluded under the unit owner's policy
- **When** the claim is reviewed
- **Then** the assessment is denied
- **And** the denial letter cites the exclusion and the association's own coverage

## Assessment levied before the policy inception is not covered @v1 [proposed]

- **Given** a policy effective 2026-04-01
- **And** an association resolution adopting the assessment dated 2026-03-18
- **When** the claim is submitted
- **Then** the assessment is denied as arising before coverage attached
- **And** the insured is advised to pursue the prior carrier

## Assessment split across several unit owners @v1 [proposed]

- **Given** a $920,000 assessment allocated across 46 units by percentage of ownership interest
- **When** the insured's 2.4% share of $22,080 is submitted
- **Then** only the insured's allocated share is considered
- **And** the adjuster confirms the allocation against the association's schedule

## Association funding shortfall does not expand the limit @v1 [proposed]

- **Given** the association's recovery leaves a $340,000 shortfall
- **When** a second assessment is levied for the same loss occurrence
- **Then** both assessments are treated as one occurrence under the loss assessment limit
- **And** no additional limit is available for the second assessment

## Deductible assessment is limited by statute @v1 [published]

- **Given** an assessment arising solely from the master policy's $100,000 deductible
- **When** the claim is adjusted
- **Then** coverage for the deductible assessment is limited to $2,000 regardless of the policy limit
- **And** the remaining balance is the unit owner's responsibility
