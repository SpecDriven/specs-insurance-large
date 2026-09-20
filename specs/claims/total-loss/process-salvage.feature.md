# Process Salvage and Title Transfer

Once a total loss settles, the carrier takes the vehicle, brands the title,
and sells the salvage through an auction partner. Recovery offsets incurred
loss on the claim.

## Personal property removed before pickup @v1 [proposed]

- **Given** a total loss vehicle still holding the insured's personal effects
- **When** the salvage vendor schedules pickup
- **Then** the insured is given 3 business days to remove personal property
- **And** storage charges incurred after the deadline are not covered

## Salvage sold at auction and recovery posted @v1 [published]

- **Given** a vehicle assigned to the salvage auction with a reserve of $3,800
- **When** the unit sells for $4,350 net of auction fees
- **Then** the recovery is posted against the claim and reduces incurred loss
- **And** the recovery is credited to the accounting period in which the funds are received

## Storage charges accrue at the tow yard @v1 [proposed]

- **Given** a vehicle at an independent tow yard accruing $65 per day
- **When** the settlement is delayed 12 days awaiting title documents
- **Then** storage is paid to the date the carrier could reasonably have taken possession
- **And** the insured is notified in writing that further storage is their responsibility

## Title branded per state requirements @v1 [published]

- **Given** a total loss in a state requiring a salvage brand within 10 days of settlement
- **When** the title is processed
- **Then** a salvage certificate is applied for and the brand type matches the loss cause
- **And** a flood loss is branded flood rather than salvage (declare-total-loss.feature.md)

## Title never produced by the insured @v1 [proposed]

- **Given** an insured who cannot locate the title 45 days after settlement
- **When** the title recovery unit reviews the file
- **Then** a duplicate title is pursued through the state motor vehicle department under the power of attorney
- **And** the salvage assignment is held in a pending-title status until the duplicate issues

## Title transferred to the carrier after settlement @v1 [published]

- **Given** a settled total loss with a clear title held by the insured
- **When** the insured returns the signed title, a power of attorney, and both key sets
- **Then** ownership transfers to Acme and the vehicle is released to the salvage vendor
- **And** the settlement draft is released only after the title documents are verified
