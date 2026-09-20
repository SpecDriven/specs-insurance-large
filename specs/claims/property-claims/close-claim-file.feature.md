# Close Claim File

Closure requirements for property claims: all exposures resolved, reserves
released (set-claim-reserve.feature.md), and the insured notified.

## Claim closed after final payment clears @v1 [published]

- **Given** a property claim with all exposures paid and no open recovery
- **When** the final draft is negotiated
- **Then** the claim status is set to "Closed — paid"
- **And** any remaining reserve is released to zero
- **And** a closing letter stating the total paid and the deductible applied is sent to the insured

## Claim closed without payment below the deductible @v1 [published]

- **Given** a repair estimate of $1,650 against a $2,500 deductible
- **When** the adjuster finalizes the estimate
- **Then** the claim is closed as "Closed — no payment, below deductible"
- **And** the insured receives the estimate with the closure letter

## Closure blocked by an open subrogation recovery @v1 [published]

- **Given** a paid claim with an active subrogation demand against a third-party carrier
- **When** the adjuster attempts to close the file
- **Then** closure is blocked and the file remains open in subrogation status
- **And** the indemnity exposure is closed while the recovery exposure stays open

## Closure blocked by an unreleased mitigation invoice @v1 [proposed]

- **Given** an outstanding vendor invoice in dispute (manage-emergency-mitigation.feature.md)
- **When** closure is attempted
- **Then** the file is held open until the vendor exposure is resolved or denied in writing
- **And** the vendor dispute is recorded with an owner and a target resolution date

## Inactivity closure after no insured contact @v1 [proposed]

- **Given** a claim with no insured contact for 90 days and three documented outreach attempts
- **When** the inactivity review runs
- **Then** the claim is closed as "Closed — unable to contact"
- **And** a letter stating the file may be reopened on request is sent to the last known address

## Quality audit sampled at closure @v1 [proposed]

- **Given** a claims quality program sampling 5% of closed files over $25,000 incurred
- **When** a closed file is selected
- **Then** coverage analysis, reserve accuracy, and payment documentation are scored against the audit rubric
- **And** any failed element is returned to the adjuster's supervisor within 5 business days
