# Apply Depreciation and Recoverable Holdback

Actual cash value is replacement cost less depreciation. On replacement cost
policies the depreciation is held back and released when the insured
actually replaces or repairs.

## Actual cash value paid first on a replacement cost policy @v1 [published]

- **Given** a covered contents loss with $18,400 in replacement cost value
- **When** depreciation of $5,200 is applied across the inventory
- **Then** an actual cash value payment of $13,200 less the deductible is issued
- **And** the $5,200 holdback is identified as recoverable on the settlement statement

## Depreciation capped by remaining useful life @v1 [proposed]

- **Given** a 12-year-old asphalt shingle roof with a 25-year expected useful life
- **When** the depreciation table is applied
- **Then** depreciation is limited to 48% of replacement cost so the item retains residual value
- **And** the condition adjustment from the inspection photographs is applied separately

## Holdback expires after the replacement period @v1 [published]

- **Given** a policy allowing 180 days from the actual cash value payment to complete replacement
- **When** day 181 arrives with no receipts submitted
- **Then** the recoverable depreciation is forfeited and the file is closed at actual cash value
- **And** a reminder was sent at day 150 documenting the deadline

## Labor depreciation disputed by the insured @v1 [proposed]

- **Given** a state that prohibits depreciating labor on dwelling repairs
- **When** the estimate depreciates both materials and labor
- **Then** the labor depreciation is reversed and the actual cash value payment is corrected
- **And** the corrected payment is issued within 10 business days of the error being identified

## Non-recoverable depreciation on an actual cash value policy @v1 [proposed]

- **Given** an HO-8 policy settling contents on an actual cash value basis
- **When** depreciation is applied
- **Then** the depreciation is marked non-recoverable and no holdback is created
- **And** the settlement letter states that no further payment will follow replacement

## Recoverable depreciation released on proof of replacement @v1 [published]

- **Given** a $5,200 recoverable holdback on a contents claim
- **When** the insured submits replacement receipts totalling $17,900
- **Then** the holdback is released up to the amount actually spent above the actual cash value payment
- **And** payment never exceeds the original replacement cost value of the items
