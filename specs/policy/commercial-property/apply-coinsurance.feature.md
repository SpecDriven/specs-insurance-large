# Apply Coinsurance Clause

Coinsurance requires the insured to carry a limit at or above a stated
percentage of value. Shortfalls reduce the loss payment by the ratio of
carried limit to required limit.

## Agreed value endorsement suspends coinsurance @v1 [proposed]

- **Given** a signed statement of values accepted by the underwriter
- **When** the agreed value option is added to the declarations
- **Then** the coinsurance clause is suspended for the policy term
- **And** the suspension lapses on the agreed value expiration date shown on the declarations

## Carried limit exactly at the coinsurance requirement @v1 [published]

- **Given** a 90% coinsurance clause and a replacement cost of $2,000,000
- **And** a carried limit of exactly $1,800,000
- **When** a covered loss is settled
- **Then** no coinsurance penalty is applied

## Coinsurance does not apply to a loss under $5,000 @v1 [published]

- **Given** an underinsured building with a 90% coinsurance clause
- **When** a $3,200 covered loss is reported
- **Then** the loss is settled without a coinsurance calculation
- **And** the settlement notice explains the small-loss waiver

## Coinsurance penalty applied to an underinsured loss @v1 [published]

- **Given** an 80% coinsurance clause and a replacement cost of $1,000,000
- **And** a carried building limit of $600,000
- **When** a $100,000 covered loss occurs
- **Then** the coinsurance ratio of 0.75 is applied
- **And** $75,000 less the deductible is paid
- **And** the penalty calculation is shown on the loss settlement worksheet

## Insured disputes the replacement cost used in the penalty @v1 [proposed]

- **Given** a coinsurance penalty computed from a carrier replacement cost estimate of $1,400,000
- **When** the insured submits an independent appraisal of $1,080,000
- **Then** the adjuster recalculates the penalty using the reconciled value
- **And** any additional indemnity is issued within 10 business days

## Loss paid in full when the insured carries to value @v1 [published]

- **Given** an 80% coinsurance clause and a replacement cost of $1,000,000
- **And** a carried building limit of $850,000
- **When** a $120,000 covered fire loss occurs
- **Then** the loss is paid in full less the deductible
