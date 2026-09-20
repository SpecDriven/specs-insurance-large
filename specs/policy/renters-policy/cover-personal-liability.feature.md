# Cover Renters Personal Liability

Coverage E personal liability and Coverage F medical payments to others
under the HO-4 form, including exclusions and defense obligations.

## Business pursuits in the rented unit @v1 [proposed]

- **Given** the insured runs a home hair salon with paying clients in the unit
- **When** a client is injured during an appointment
- **Then** the claim is denied under the business pursuits exclusion
- **And** the insured is offered a home business endorsement at next renewal

## Damage to landlord property from insured negligence @v1 [published]

- **Given** the insured leaves a bathtub running and floods the unit below
- **When** the landlord presents a $22,000 repair invoice
- **Then** the loss is paid under Coverage E as property damage to others
- **And** the carrier reserves subrogation rights against any contributing contractor

## Defense costs are paid outside the liability limit @v1 [published]

- **Given** a suit demanding $250,000 against a policy with a $300,000 Coverage E limit
- **When** counsel is assigned and incurs $48,000 in defense fees
- **Then** the defense fees are paid as allocated LAE and do not erode Coverage E
- **And** the duty to defend ends once the limit is tendered

## Guest injured in the insured unit @v1 [published]

- **Given** a policy with $300,000 Coverage E and $5,000 Coverage F
- **When** a dinner guest slips on a wet floor and incurs $3,200 in emergency care
- **Then** medical payments are paid under Coverage F without regard to fault
- **And** no deductible is applied to the medical payments loss

## Intentional act is excluded @v1 [published]

- **Given** a claim arising from the insured deliberately striking a neighbor
- **When** coverage is evaluated
- **Then** the claim is denied under the expected or intended injury exclusion
- **And** a reservation of rights letter is issued before the denial

## Umbrella sits above the renters liability limit @v1 [proposed]

- **Given** a $300,000 Coverage E limit and a personal umbrella requiring $300,000 underlying
- **When** a judgment of $740,000 is entered against the insured
- **Then** Coverage E pays its full $300,000 limit
- **And** the balance drops to the umbrella (../umbrella-policy/extend-coverage-over-drop-down.feature.md)
