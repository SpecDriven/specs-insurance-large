# Meet Minimum Financial Responsibility Limits

Every auto policy must carry at least the compulsory liability limits of its
garaging state, plus any mandatory no-fault or uninsured motorist coverages.

## Below-minimum endorsement request is declined @v1 [proposed]

- **Given** an in-force Virginia policy at 30/60/20
- **When** the insured requests a reduction to 20/40/10
- **Then** the endorsement is declined
- **And** the decline reason "below compulsory financial responsibility limits" is recorded

## Commercial fleet requires MCS-90 for interstate operation @v1 [published]

- **Given** a commercial auto policy covering interstate for-hire trucking
- **When** the policy is issued
- **Then** an MCS-90 endorsement is attached at the federal $750,000 limit
- **And** the filing is transmitted to FMCSA

## Garaging change to a higher-minimum state adjusts limits at renewal @v1 [proposed]

- **Given** an in-force policy moving its garaging address from Ohio to Maine
- **When** the address endorsement is processed (policy/auto-policy/endorse-policy.feature.md)
- **Then** liability limits below the Maine minimum of 50/100/25 are increased
- **And** the premium is recalculated from the endorsement effective date

## No-fault states add mandatory personal injury protection @v1 [published]

- **Given** a vehicle garaged in Michigan
- **When** the policy is rated
- **Then** personal injury protection is added as a mandatory coverage
- **And** the insured selects a PIP medical limit from the approved options

| PIP medical limit | annual premium relativity |
| ----------------- | ------------------------- |
| $50,000           | 0.62                      |
| $250,000          | 0.84                      |
| $500,000          | 1.00                      |
| Unlimited         | 1.41                      |

## Quoted limits are floored at the state minimum @v1 [published]

- **Given** a prospect in Pennsylvania requesting 10/20/10 bodily injury and property damage limits
- **And** the Pennsylvania compulsory minimum is 15/30/5
- **When** the quote is rated
- **Then** the bodily injury limit is raised to 15/30
- **And** the prospect is shown a notice explaining the statutory floor

## Uninsured motorist rejection requires a signed form @v1 [published]

- **Given** a Missouri applicant who declines underinsured motorist coverage
- **When** the policy is bound (policy/auto-policy/bind-policy.feature.md)
- **Then** binding is held until the signed UM/UIM rejection form is on file
- **And** the form is stored against the policy with its execution date
