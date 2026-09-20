# Cover Hull and Machinery

Physical damage to the vessel, its motor, and permanently attached
equipment, including settlement basis, deductibles, and wear-and-tear
exclusions.

[Jira:PC-2204](https://jira.com/PC-2204)

## Actual cash value settlement on an older hull @v1 [published]

- **Given** a 1996 hull written on an actual cash value basis
- **When** a fire destroys the vessel
- **Then** settlement is the depreciated value at the time of loss, capped at the scheduled limit
- **And** the depreciation schedule used is disclosed to the insured

## Agreed value paid on a total loss @v1 [published]

- **Given** a hull scheduled at an agreed value of $58,000
- **When** the vessel sinks at its slip and is declared a constructive total loss
- **Then** the full $58,000 is paid without depreciation
- **And** the carrier takes title to the salvage

## Gradual osmotic blistering is excluded @v1 [published]

- **Given** a surveyor attributes hull blistering to years of moisture intrusion
- **When** the claim is evaluated
- **Then** the loss is denied under the wear, tear, and gradual deterioration exclusion
- **And** the survey report is attached to the denial letter

## Ice and freezing damage during the lay-up period @v1 [proposed]

- **Given** a lay-up period from November 1 through March 31 with a winterization warranty
- **When** a cracked engine block is discovered in February and no winterization receipt exists
- **Then** the freezing loss is denied for breach of the winterization warranty

## Separate deductible applies to the outboard motor @v1 [proposed]

- **Given** a $1,000 hull deductible and a $500 machinery deductible
- **When** a lower unit failure damages only the outboard motor
- **Then** the $500 machinery deductible is applied
- **And** the hull deductible is not stacked on the same loss

## Subrogation against a negligent marina @v1 [proposed]

- **Given** a dock fire caused by faulty marina wiring damages the insured vessel
- **When** the hull claim is paid at $34,000
- **Then** subrogation is pursued against the marina and its liability carrier
- **And** the insured's deductible is recovered first from any subrogation proceeds
