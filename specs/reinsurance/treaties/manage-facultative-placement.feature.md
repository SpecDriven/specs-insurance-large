# Manage a Facultative Placement

Individual risks that exceed treaty capacity or fall outside subject business
(define-reinsurance-treaty.feature.md) are placed one at a time with named
reinsurers through a broker.

## Bound share is recorded against each reinsurer @v1 [published]

- **Given** a facultative placement completed at 100% across four markets
- **When** the placement is bound
- **Then** each reinsurer's signed line and premium share are recorded
- **And** the certificate number is stored against the underlying policy

## Certificate terms must follow the underlying form @v1 [published]

- **Given** a facultative certificate excluding flood while the underlying policy grants it
- **When** the certificate is reviewed
- **Then** a terms mismatch exception is raised
- **And** the certificate is not accepted until the exclusion is removed or the mismatch is approved

## Endorsement to the underlying risk is notified @v1 [proposed]

- **Given** a placed risk whose insured value increases by $8,000,000 mid-term
- **When** the endorsement is processed
- **Then** each participating reinsurer is notified within 30 days
- **And** additional facultative premium is billed on the increased exposure

## Placement expires with the underlying policy @v1 [proposed]

- **Given** a facultative certificate coterminous with a policy expiring 2026-11-01
- **When** the policy is non-renewed
- **Then** the certificate lapses on the same date
- **And** any unearned facultative premium is returned pro-rata

## Risk above treaty capacity is submitted facultatively @v1 [published]

- **Given** a commercial property submission with a $92,000,000 total insured value
- **And** treaty capacity of $60,000,000 per risk
- **When** the underwriter refers the risk
- **Then** a facultative submission for $32,000,000 is created
- **And** the submission is sent to the broker with the SOV and COPE data

## Short placement blocks the underlying bind @v1 [published]

- **Given** a facultative order placed at only 72% of the required share
- **When** the underwriter attempts to bind the underlying policy
- **Then** the bind is blocked
- **And** the shortfall must be declined, reduced, or retained with net capacity approval
