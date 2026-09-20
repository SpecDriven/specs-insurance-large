# Drop Down Over Exhausted Underlying Limits

How the umbrella responds once underlying limits are exhausted, and when
it drops down to cover a loss the underlying policy does not.

**Assigned:** Jonas Berg

## Aggregate erosion across multiple losses @v1 [proposed]

- **Given** a $1,000,000 umbrella that has already paid $700,000 on a prior loss in the policy period
- **When** a second covered loss of $500,000 is presented
- **Then** only $300,000 of remaining aggregate is available
- **And** the insured is notified in writing that the limit is nearly exhausted

## Drop down for a peril excluded by underlying @v1 [published]

- **Given** a libel claim excluded by the homeowners policy but covered by the umbrella
- **When** the claim is presented
- **Then** the umbrella responds as primary after the $250 self-insured retention
- **And** the umbrella assumes the duty to defend

## Retention applies only when no underlying responds @v1 [published]

- **Given** an umbrella with a $250 self-insured retention
- **When** the underlying homeowners policy pays its full $300,000 limit on the same loss
- **Then** the umbrella pays the excess without applying the retention

## Two umbrellas covering the same loss @v1 [proposed]

- **Given** the insured is an additional insured on a relative's umbrella covering the same occurrence
- **When** both umbrellas are put on notice
- **Then** the insured's own umbrella responds first as the policy of the named insured
- **And** the other umbrella contributes by equal shares above that limit

## Umbrella pays above an exhausted auto limit @v1 [published]

- **Given** a 250/500 auto policy and a $1,000,000 umbrella
- **When** a single-claimant judgment of $680,000 is entered
- **Then** the auto policy tenders its $250,000 per-person limit
- **And** the umbrella pays the remaining $430,000
- **And** exhaustion of the underlying limit is documented before umbrella payment

## Underlying carrier becomes insolvent @v1 [proposed]

- **Given** the underlying auto carrier is placed in liquidation by the state
- **When** a covered loss exceeds the umbrella attachment point
- **Then** the umbrella does not drop down for the insolvent carrier's limit
- **And** the insured is directed to the state guaranty association
