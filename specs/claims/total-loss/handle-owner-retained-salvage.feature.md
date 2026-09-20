# Handle Owner-Retained Salvage

An insured may keep the totalled vehicle. The settlement is then reduced by
the salvage value the carrier would have recovered at auction
(process-salvage.feature.md).

## Future coverage restricted on the retained vehicle @v1 [proposed]

- **Given** a salvage-branded vehicle retained by the insured and returned to the road
- **When** the insured requests physical damage coverage at renewal
- **Then** liability coverage is offered but collision and comprehensive are declined
- **And** the restriction is shown on the renewal declarations page (policy/auto-policy/renew-policy.feature.md)

## Insured elects to retain the vehicle @v1 [published]

- **Given** a settlement of $18,400 and a salvage bid of $4,900
- **When** the insured elects owner retention in writing
- **Then** the net settlement is reduced to $13,500 before the deductible
- **And** the insured signs an owner-retained salvage acknowledgment before payment releases

## Retained vehicle must be re-inspected before it is registered @v1 [proposed]

- **Given** an owner-retained vehicle with a salvage-branded title
- **When** the insured completes repairs and applies for a rebuilt title
- **Then** the state salvage re-inspection is the insured's responsibility, not the carrier's
- **And** the carrier confirms it will not verify or certify the repairs

## Retention declined on a vehicle that cannot be made roadworthy @v1 [published]

- **Given** a vehicle with deployed airbags, a severed frame rail, and flood intrusion
- **When** the insured requests owner retention
- **Then** the request is declined because the vehicle cannot safely return to the road
- **And** the reason and the supporting inspection report are provided in writing

## State prohibits retention on a branded total loss @v1 [proposed]

- **Given** a state statute barring owner retention where the title must be branded non-repairable
- **When** the insured asks to keep the vehicle
- **Then** retention is declined as prohibited by statute
- **And** the statutory citation is included in the letter to the insured
