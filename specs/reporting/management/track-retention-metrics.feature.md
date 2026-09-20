# Track Retention Metrics

Policy and premium retention at renewal, measured against the offers made
rather than against the whole in-force book. Non-renewals initiated by Acme
are reported separately from customer-initiated lapses.

## Carrier non-renewals are excluded from retention @v1 [published]

- **Given** a cohort containing 310 policies non-renewed by underwriting
- **When** retention is calculated
- **Then** those policies are removed from the denominator
- **And** they are reported on a separate carrier-initiated attrition line

## Cohort is not final until it fully matures @v1 [proposed]

- **Given** a July cohort measured 20 days after the last expiry
- **When** a user requests the figure
- **Then** the result is returned marked provisional
- **And** the figure is locked as final only once the 45-day maturity is reached

## Late payment is not a lapse until the grace period ends @v1 [proposed]

- **Given** a renewed policy whose first installment is unpaid on the due date
- **When** retention is measured while the grace period is still running (billing/collect-premium.feature.md)
- **Then** the policy is counted as retained
- **And** a lapse is recorded only if cancellation for non-payment takes effect

## Policy retention at the renewal cohort level @v1 [published]

- **Given** 12,400 personal auto policies expiring in July
- **When** the retention job runs 45 days after the last expiry in the cohort
- **Then** policy retention is reported as renewed policies over eligible offers
- **And** premium retention is reported separately on the same cohort

## Rate change band segments the retention curve @v1 [published]

- **Given** a renewal cohort priced under a rate revision
- **When** retention is segmented by the renewal premium change band
- **Then** retention is reported for each band against the cohort average
- **And** bands above +15% are flagged for the product owner

## Rewrite to another Acme product counts as retained @v1 [proposed]

- **Given** an insured who declines the auto renewal and is rewritten onto a different Acme auto product the same day
- **When** retention is calculated
- **Then** the insured counts as retained at the customer level
- **And** the original policy still counts as lapsed at the policy level
