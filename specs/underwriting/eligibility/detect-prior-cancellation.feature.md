# Detect Prior Cancellation or Non-Renewal

Identifying applicants whose prior coverage was cancelled or non-renewed
by a carrier, and separating disqualifying reasons from benign ones.

## Conflicting prior carrier records @v1 [proposed]

- **Given** the applicant states no prior cancellation and the vendor report shows one
- **When** the conflict is detected
- **Then** the submission is held and the agent is asked for the prior declarations page
- **And** an underwriter decides after reviewing the uploaded documents

## Gap in coverage longer than 30 days @v1 [published]

- **Given** prior coverage that ended on January 9 and a requested effective date of March 2
- **When** the lapse is measured
- **Then** the continuous-coverage discount is removed
- **And** the submission is rated at the no-prior-insurance tier

## Insured-initiated cancellation is not disqualifying @v1 [published]

- **Given** a prior policy cancelled at the insured's request after selling the vehicle
- **When** prior coverage history is evaluated
- **Then** the cancellation is classified as insured-requested and does not affect eligibility

## Non-payment cancellation within the last year @v1 [published]

- **Given** two cancellations for non-payment of premium in the past 12 months
- **When** prior coverage history is evaluated
- **Then** the submission is referred and full payment in advance is required to bind
- **And** the installment plan option is suppressed on the quote

## Non-renewal following a catastrophe is set aside @v1 [proposed]

- **Given** a non-renewal issued during a statewide wildfire book reduction
- **When** the reason code is reviewed against the catastrophe exception list
- **Then** the non-renewal is excluded from the eligibility evaluation
- **And** the exception and its supporting bulletin number are documented

## Prior cancellation for material misrepresentation @v1 [published]

- **Given** an applicant whose prior carrier cancelled for misrepresenting the garaging address
- **When** prior coverage history is evaluated
- **Then** the submission is declined
- **And** the prior carrier name and cancellation date are recorded on the decline
