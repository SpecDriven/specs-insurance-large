# Handle Property Damage Liability Claim

Third-party property damage under the liability section: claimant vehicles,
fences, mailboxes, and commercial fixtures. Recovery from an at-fault third
party is handled in (claims/subrogation/identify-subrogation-potential.feature.md).

## Claimant vehicle settled at actual cash value @v1 [published]

- **Given** a total-loss claimant vehicle with a 2016 model year and 142,000 miles
- **When** the valuation report returns an ACV of $6,850
- **Then** the property damage liability exposure is settled at ACV less any applicable salvage credit
- **And** the claimant is offered a rental for the reasonable repair or replacement period

## Commercial fixture claim exceeds the desk authority @v1 [published]

- **Given** damage to a service station canopy estimated at $61,400
- **When** the estimate is loaded onto the exposure
- **Then** the claim is reassigned from the desk unit to a field property adjuster
- **And** an independent adjuster is engaged to inspect within 5 business days

## Contents in the claimant vehicle are excluded @v1 [proposed]

- **Given** a claimant seeking $2,300 for tools carried in the damaged pickup
- **When** the demand is reviewed against the property damage liability grant
- **Then** the tools are evaluated as recoverable third-party property
- **And** depreciation is applied to any item over 3 years old

## Diminished value is evaluated where the state allows it @v1 [proposed]

- **Given** a claimant vehicle repaired in Georgia with a pre-loss value of $34,000
- **When** the claimant submits a third-party diminished value appraisal of $3,900
- **Then** a diminished value evaluation is performed using the carrier's 17c methodology
- **And** the resulting figure is added to the property damage exposure

## Disputed liability splits the payment @v1 [proposed]

- **Given** a contested intersection loss with a 50/50 liability assessment
- **When** the claimant's $8,000 repair estimate is settled
- **Then** $4,000 is paid on the property damage liability exposure
- **And** the liability split and its evidentiary basis are documented in the file note

## Loss of use is paid only for the documented period @v1 [published]

- **Given** a claimant whose vehicle was in the shop for 11 days
- **And** an agreed repair period of 8 days
- **When** the loss-of-use claim for 11 days is reviewed
- **Then** loss of use is paid for 8 days at the prevailing local rate
- **And** the 3-day shortfall is explained in the payment letter
