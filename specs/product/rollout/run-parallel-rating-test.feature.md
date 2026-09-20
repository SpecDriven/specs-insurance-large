# Run a Parallel Rating Test

Before a rollout, every quote is rated on both the current and the candidate
product version. Only the current version's premium is shown; the candidate
result is logged for comparison (roll-out-product-by-state.feature.md).

**Assigned:** Jonas Berg

## Candidate failure never reaches the prospect @v1 [published]

- **Given** a candidate version whose territory table lookup throws on ZIP 89501
- **When** a prospect quotes from that ZIP
- **Then** the prospect receives the current version premium normally
- **And** the candidate failure is logged as a shadow error without any customer-visible effect

## Daily variance summary for the actuary @v1 [published]

- **Given** a completed day of parallel testing
- **When** the nightly summary is produced
- **Then** quotes are grouped by absolute variance band with counts and mean signed difference

| variance band | quotes | mean signed difference |
| ------------- | ------ | ---------------------- |
| within 1%     | 8,410  | +0.2%                  |
| 1% to 2%      | 940    | +1.4%                  |
| 2% to 5%      | 260    | +3.1%                  |
| over 5%       | 31     | +11.8%                 |

## Parallel testing is suppressed for a rewrite quote @v1 [proposed]

- **Given** a quote created as a rewrite of a cancelled policy
- **When** the quote is rated
- **Then** no candidate rating is attempted because the rewrite carries prior-term factors
- **And** the quote is excluded from the daily variance summary

## Shadow rate every eligible quote @v1 [published]

- **Given** a parallel test enabled for personal auto in Nevada
- **When** a prospect requests a quote
- **Then** the premium from the current version is returned to the prospect
- **And** the candidate version premium is logged with the quote identifier and the rating inputs

## Test ends when the exit criteria are met @v1 [proposed]

- **Given** a parallel test requiring 30,000 quotes and zero open variance defects
- **When** both conditions hold for three consecutive days
- **Then** the test is marked complete and the candidate is cleared for rollout
- **And** the clearance record cites the quote count and the final variance distribution

## Variance beyond tolerance raises a defect @v1 [published]

- **Given** a parallel test with a per-quote tolerance of plus or minus 2%
- **When** a quote rates $517 on the current version and $604 on the candidate
- **Then** a rating variance defect is raised with both premium breakdowns attached
- **And** the defect names the first rating step where the two paths diverge
