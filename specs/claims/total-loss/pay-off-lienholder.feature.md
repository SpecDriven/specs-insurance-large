# Pay Off Lienholder on Total Loss

The lienholder on the title has first claim on the total loss settlement.
Anything left after the payoff goes to the insured; any shortfall is the
insured's unless gap coverage applies (apply-gap-coverage.feature.md).

## Deductible applied before the lienholder payment @v1 [proposed]

- **Given** a $19,000 settlement with a $1,000 collision deductible
- **When** the payment split is calculated
- **Then** the deductible is subtracted first and $18,000 is available to the lienholder
- **And** the insured is told the deductible reduces the amount applied to the loan

## Lienholder on the title is not the lienholder on the policy @v1 [proposed]

- **Given** a loss payee on the declarations page that differs from the lienholder recorded on the title
- **When** the payee is verified before release
- **Then** the title lienholder controls and payment is held until the discrepancy is resolved
- **And** the policy is corrected by endorsement (policy/auto-policy/endorse-policy.feature.md)

## Payoff includes negative equity rolled from a prior loan @v1 [proposed]

- **Given** a payoff of $26,400 on a vehicle valued at $18,900 due to rolled negative equity
- **When** the shortfall is evaluated
- **Then** the carrier's obligation remains limited to actual cash value plus taxes and fees
- **And** the insured is referred to any gap policy purchased at the dealership

## Settlement exceeds the loan payoff @v1 [published]

- **Given** a settlement of $21,400 and a ten-day payoff quote of $16,900
- **When** payment is issued
- **Then** $16,900 is sent to the lienholder and $4,500 to the named insured
- **And** the lienholder is asked to confirm the lien release once the payoff posts

## Settlement falls short of the loan payoff @v1 [published]

- **Given** a settlement of $17,200 and a payoff of $20,850
- **When** payment is issued
- **Then** the full settlement less the deductible is sent to the lienholder
- **And** the insured is notified in writing of the remaining $3,650 balance owed to the lender

## Ten-day payoff quote expires before release @v1 [published]

- **Given** a payoff quote valid through October 14
- **When** payment is not released until October 20
- **Then** an updated payoff quote is obtained before the draft is issued
- **And** the per-diem interest difference is applied to the amount sent to the lienholder
