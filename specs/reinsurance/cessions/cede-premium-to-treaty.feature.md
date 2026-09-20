# Cede Premium to a Treaty

Qualifying written premium is allocated to treaties according to their
subject business and share (reinsurance/treaties/define-reinsurance-treaty.feature.md).
Cessions are produced monthly and net of ceding commission.

## Cancellation reverses the unearned portion @v1 [published]

- **Given** a ceded policy cancelled at 60% of term with $960 originally ceded
- **When** the cancellation is processed (policy/auto-policy/cancel-policy.feature.md)
- **Then** a return cession of $384 is posted
- **And** the ceding commission is clawed back in the same proportion

## Mid-term endorsement generates an incremental cession @v1 [published]

- **Given** an endorsement adding $310 of additional premium to a ceded policy
- **When** the cession run executes
- **Then** an incremental cession of $124 is posted
- **And** the original cession record is left unchanged

## Policy outside subject business is not ceded @v1 [proposed]

- **Given** a dwelling fire policy in a state excluded from the treaty's territory schedule
- **When** the cession run evaluates the policy
- **Then** no cession is produced
- **And** the policy is listed on the unceded exceptions report with its exclusion reason

## Treaty change at renewal splits the cession by effective date @v1 [proposed]

- **Given** a treaty whose share moves from 40% to 30% on 2027-01-01
- **When** cessions are produced for January
- **Then** premium on policies effective before 2027-01-01 cedes at 40%
- **And** premium on policies effective on or after that date cedes at 30%

## Unearned premium reserve is ceded alongside written premium @v1 [proposed]

- **Given** a quarter-end close with $4,180,000 of ceded written premium
- **When** the statutory schedule is produced
- **Then** the ceded unearned premium reserve is calculated on the same basis
- **And** the ceded reserve reconciles to the cession ledger within $1

## Written premium is ceded at the treaty share @v1 [published]

- **Given** a homeowners policy with $2,400 written premium subject to a 40% quota share
- **When** the monthly cession run executes
- **Then** $960 of ceded written premium is posted to the treaty
- **And** ceding commission of $268.80 at 28% is recorded as a receivable
