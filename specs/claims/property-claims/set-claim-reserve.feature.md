# Set and Adjust Claim Reserve

**Assigned:** Jonas Berg

Reserves are the carrier's estimate of ultimate incurred loss and loss
adjustment expense on an open file. They drive statutory reporting and must
move as soon as the adjuster's information changes.

## Initial reserve posted at first notice of loss @v1 [published]

- **Given** a new homeowners water claim with no inspection yet completed
- **When** the claim is opened
- **Then** an average-value reserve of $8,500 is posted for indemnity by loss cause
- **And** a separate LAE reserve of $1,200 is posted for adjustment expense
- **And** the reserve basis is recorded as "average value — pending inspection"

## Reserve capped at the policy limit @v1 [proposed]

- **Given** a Coverage A limit of $310,000 and an early rebuild projection of $365,000
- **When** the reserve is entered
- **Then** the indemnity reserve is capped at the $310,000 limit
- **And** an excess exposure note is added and the underwriting file is flagged

## Reserve change above authority requires approval @v1 [published]

- **Given** an adjuster with $25,000 reserve authority
- **When** the adjuster attempts to set a reserve of $68,000
- **Then** the change is held pending supervisor approval
- **And** the approval request routes to the claims manager queue with the supporting estimate

| role             | indemnity reserve authority | payment authority |
| ---------------- | --------------------------- | ----------------- |
| Adjuster I       | $10,000                     | $5,000            |
| Adjuster II      | $25,000                     | $15,000           |
| Claims Manager   | $150,000                    | $100,000          |
| Claims Director  | unlimited                   | $500,000          |

## Reserve released to zero when the file closes @v1 [proposed]

- **Given** a claim with $23,900 reserved and $22,150 paid
- **When** the file is closed (close-claim-file.feature.md)
- **Then** the remaining $1,750 reserve is released
- **And** the incurred loss on the claim equals the amount actually paid

## Reserve restored when a closed file reopens @v1 [proposed]

- **Given** a closed claim reopened for a supplement of $4,300 (claims/auto-accidents/reopen-closed-claim.feature.md)
- **When** the reopen is processed
- **Then** an indemnity reserve of $4,300 is re-established on the original claim number
- **And** the reopened reserve is reported in the current accounting period, not the original one

## Reserve stepped to the estimate after inspection @v1 [published]

- **Given** an average-value reserve of $8,500 and a completed estimate of $23,900
- **When** the adjuster posts the estimate to the file
- **Then** the indemnity reserve is revised to $23,900 net of the deductible
- **And** the change is recorded with a reserve rationale note the same business day

## Stale reserve flagged by the diary review @v1 [proposed]

- **Given** an open claim with no reserve movement in 90 days
- **When** the monthly reserve adequacy review runs
- **Then** the file appears on the stale reserve exception report
- **And** the adjuster must record a re-evaluation within 10 business days
