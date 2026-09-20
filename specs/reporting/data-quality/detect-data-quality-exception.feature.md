# Detect a Data Quality Exception

Automated checks over the policy, claim, and billing stores that catch
records which are internally inconsistent or impossible. Exceptions are
routed to the owning operations team with an ageing clock.

**Assigned:** Miguel Santos

## Ageing exception escalates @v1 [proposed]

- **Given** a severity one exception open for 5 business days
- **When** the ageing sweep runs
- **Then** the exception escalates to the operations manager
- **And** severity two exceptions escalate at 15 business days instead

## Claim paid beyond the policy limit @v1 [published]

- **Given** a claim with $52,000 paid against a $50,000 per-occurrence limit
- **When** the limit conformance check runs
- **Then** an exception is raised naming the claim, the limit, and the overage
- **And** the claim is routed to the claims quality unit for review

## False positive feeds the rule tuning log @v1 [proposed]

- **Given** an exception the reviewer closes as a false positive
- **When** the closure is saved
- **Then** the reviewer must supply a reason from the controlled list
- **And** rules whose false positive rate exceeds 30% in a month are listed for tuning

## Known exceptions may be suppressed with an expiry @v1 [proposed]

- **Given** a recurring exception from a legacy conversion batch
- **When** the data steward suppresses it with an expiry of December 31
- **Then** the exception stops appearing in the daily queue
- **And** the suppression lapses automatically on the expiry date and the exception reappears

## Loss date outside the policy period @v1 [published]

- **Given** a claim with a loss date of January 3 against a policy incepting January 10
- **When** the coverage-in-force check runs
- **Then** an exception is raised as a coverage-date conflict
- **And** the claim is held from payment until a coverage decision is recorded

## Policy in force with no coverage lines @v1 [published]

- **Given** a policy in force with a declarations page and no coverage line records
- **When** the nightly data quality sweep runs
- **Then** a severity one exception is raised to policy operations
- **And** the policy is excluded from the statistical extract until the exception is cleared
