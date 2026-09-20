# Charge Back Commission on Cancellation

Reverses commission already paid when premium is returned to the insured,
whether from a mid-term cancellation or a premium-reducing endorsement.

## Chargeback against a terminated producer is pursued as a receivable @v1 [proposed]

- **Given** a $2,140 chargeback owed by a producer whose appointment has ended
- **When** the statement cycle closes with no earnings to offset
- **Then** the amount is converted to an agency receivable
- **And** the receivable follows the same aging and referral path as premium (collections/refer-to-collections-agency.feature.md)

## Chargeback rate matches the rate originally paid @v1 [published]

- **Given** a policy bound under a 17% schedule that was later reduced to 14%
- **When** a mid-term cancellation generates return premium
- **Then** the chargeback is computed at the 17% rate originally paid
- **And** the current schedule rate is not used

## Chargeback window expires after twelve months @v1 [proposed]

- **Given** commission paid 14 months ago on a term that has since expired
- **And** the carrier's chargeback window is 12 months
- **When** a late cancellation endorsement returns premium for that term
- **Then** no chargeback is taken from the producer
- **And** the return premium is absorbed by the carrier

## Full chargeback on a flat cancellation @v1 [published]

- **Given** a policy cancelled flat within the free-look period
- **And** $187.20 of commission was paid on the original binding
- **When** the cancellation is processed
- **Then** the full $187.20 is charged back to the producer
- **And** the chargeback appears on the next commission statement

## Pro-rata chargeback follows the return premium @v1 [published]

- **Given** a mid-term cancellation returning $756 of a $1,200 premium
- **And** commission was paid at the 15% new business rate
- **When** the chargeback is calculated
- **Then** $113.40 is charged back, matching 15% of the returned premium
- **And** commission on the earned portion is retained by the producer

## Reinstatement reverses the chargeback @v1 [proposed]

- **Given** a chargeback of $113.40 posted when a policy cancelled for nonpayment
- **When** the policy is reinstated without lapse within 30 days
- **Then** the chargeback is reversed and the commission is restored
- **And** the reversal is netted on the current statement
