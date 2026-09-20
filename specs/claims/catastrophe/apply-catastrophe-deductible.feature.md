# Apply Catastrophe Deductible

Percentage hurricane, named-storm, and wind/hail deductibles replace the
flat all-other-perils deductible when a loss attaches to a declared event
(declare-catastrophe-event.feature.md).

## Deductible allocation across multiple coverages @v1 [proposed]

- **Given** a storm loss with $60,000 of Coverage A damage and $9,000 of Coverage B damage
- **When** the single $8,400 percentage deductible is applied
- **Then** the deductible is taken once against the combined loss rather than per coverage
- **And** the allocation between Coverage A and Coverage B is itemized for the mortgagee

## Deductible exceeds the loss amount @v1 [published]

- **Given** a covered wind loss scoped at $6,100
- **And** a calculated 2% deductible of $8,400
- **When** the settlement is calculated
- **Then** the net indemnity is $0
- **And** a below-deductible letter is sent explaining the percentage calculation

## Deductible is applied once per season @v1 [published]

- **Given** a policy that already absorbed a full 2% hurricane deductible in July
- **When** a second named-storm loss occurs in September of the same calendar year
- **Then** no further hurricane deductible is applied
- **And** the prior deductible application is cited in the payment letter

## Named-storm percentage deductible replaces the flat amount @v1 [published]

- **Given** a Florida homeowners policy with a Coverage A limit of $420,000
- **And** a 2% named-storm deductible and a $1,000 all-other-perils deductible
- **When** a loss attaches to a declared hurricane event
- **Then** an $8,400 deductible is applied instead of $1,000
- **And** the deductible basis is shown on the settlement statement

## Named-storm percentage deductible replaces the flat amount @v2 [proposed]

Adds the endorsed buy-down to v1.

- **Given** a Florida homeowners policy with a Coverage A limit of $420,000
- **And** endorsement HO 03 12 reducing the named-storm deductible from 2% to 1%
- **When** a loss attaches to a declared hurricane event
- **Then** a $4,200 deductible is applied instead of $8,400
- **And** the endorsement form number is recorded as the authority for the reduced figure

## Trigger requires the named-storm wind field @v1 [proposed]

- **Given** a wind loss during a declared event
- **When** the National Hurricane Center advisory shows the risk address outside the tropical-storm-force wind field
- **Then** the flat all-other-perils deductible applies rather than the named-storm percentage
