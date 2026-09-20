# Apply Gap Coverage

The optional loan/lease gap endorsement pays the difference between actual
cash value and the outstanding loan balance after a total loss
(pay-off-lienholder.feature.md).

## Excluded charges removed from the payoff @v1 [proposed]

- **Given** a payoff including $980 of deferred interest, late fees, and an extended warranty balance
- **When** the gap benefit is calculated
- **Then** those charges are excluded and the benefit is computed on the financed vehicle balance only
- **And** the excluded line items are itemized for the insured and the lender

## Gap applies to a lease residual shortfall @v1 [proposed]

- **Given** a leased vehicle with a lessor early-termination amount of $24,300 and a settlement of $20,900
- **When** the lessor submits its termination statement
- **Then** the gap benefit responds to the residual and remaining payments, excluding excess wear and mileage charges
- **And** the excess wear charges are billed by the lessor directly to the lessee

## Gap benefit capped at 25% of actual cash value @v1 [published]

- **Given** an endorsement capping the benefit at 25% of actual cash value
- **When** a $19,000 settlement carries a $26,400 payoff
- **Then** the gap benefit is limited to $4,750 rather than the full $7,400 shortfall
- **And** the remaining $2,650 is disclosed to the insured as their responsibility

## Gap endorsement covers the loan shortfall @v1 [published]

- **Given** a gap endorsement in force, a settlement of $17,200, and a payoff of $20,850
- **When** the gap benefit is calculated
- **Then** $3,650 is paid to the lienholder under the endorsement
- **And** the insured owes nothing further on the financed balance

## No gap coverage on the declarations page @v1 [proposed]

- **Given** a policy with no loan/lease coverage endorsement
- **When** the insured asks Acme to cover the $4,100 shortfall
- **Then** the request is declined as not covered under the policy
- **And** the insured is referred to any gap product purchased through the dealer or lender
