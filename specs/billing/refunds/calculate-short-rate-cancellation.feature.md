# Calculate Short-Rate Cancellation

Computes return premium when the insured cancels mid-term and the policy
carries a short-rate penalty, as distinct from the pro-rata method used
for carrier-initiated cancellations
(billing/refund-unearned-premium.feature.md).

**Assigned:** Dana Whitfield

## Carrier-initiated cancellation uses pro-rata @v1 [published]

- **Given** a policy cancelled by the carrier for nonpayment at day 120 of a twelve-month term
- **When** the return premium is calculated
- **Then** the pro-rata method is used and no short-rate penalty is applied
- **And** the return premium is $805

## Flat cancellation within the free-look period @v1 [published]

- **Given** a homeowners policy cancelled 8 days after inception
- **And** the policy form provides a 10-day free-look
- **When** the cancellation is processed
- **Then** the policy is cancelled flat and 100% of premium is returned
- **And** no policy fee is retained

## Fully earned fees survive the cancellation @v1 [proposed]

- **Given** a policy with a $25 fully earned policy fee and a $50 SR-22 filing fee
- **When** a short-rate cancellation is calculated
- **Then** both fees are retained in full and excluded from the return premium
- **And** the retained fees are itemized on the cancellation notice

## Insured-requested cancellation applies the short-rate penalty @v1 [published]

- **Given** a twelve-month policy with $1,200 written premium cancelled by the insured at day 120
- **When** the return premium is calculated
- **Then** the earned premium is computed at 90% of the pro-rata earned amount plus a 10% penalty
- **And** the return premium of $756 is credited to the account

## Minimum retained premium floors the calculation @v1 [proposed]

- **Given** a boat policy cancelled 11 days into the term with a $150 minimum retained premium
- **When** the short-rate calculation returns an earned amount of $94
- **Then** the earned premium is raised to the $150 minimum
- **And** the return premium is reduced accordingly

## Short-rate is prohibited in the governing state @v1 [proposed]

- **Given** a personal auto policy garaged in California, where short-rate cancellation is prohibited
- **When** the insured cancels mid-term
- **Then** the pro-rata method is used regardless of the policy form
- **And** the state rule override is recorded on the transaction
