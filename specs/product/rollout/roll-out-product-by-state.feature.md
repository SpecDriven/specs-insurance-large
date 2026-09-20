# Roll Out a Product by State

Enabling an approved product version for new business in one state at a
time, gated on the department of insurance approval, agency appointment,
and the licensing of the producers who will sell it.

## Emergency rollback to the prior version @v1 [proposed]

- **Given** a live rollout in which a rating defect overcharges symbol 22 vehicles
- **When** the product manager triggers a rollback
- **Then** new quotes revert to the prior version within 15 minutes
- **And** policies already bound on the defective version are listed for remediation and re-rated

## Enable new business on the filing approval date @v1 [published]

- **Given** personal auto version 2026.1 approved by the Nevada Division of Insurance effective March 1
- **When** the rollout for Nevada is activated
- **Then** quotes with an effective date on or after March 1 may be written on 2026.1
- **And** quotes with an earlier effective date continue on the prior version

## Pilot limited to a producer group @v1 [published]

- **Given** an activated rollout restricted to the Reno pilot agency group
- **When** a producer outside the group quotes the product
- **Then** the product is not offered to that producer
- **And** the prior version is quoted instead with no message shown to the prospect

## Rollout before approval is refused @v1 [published]

- **Given** a product version with a filing still pending at the Oregon department
- **When** the product manager attempts to activate the Oregon rollout
- **Then** activation is refused
- **And** the refusal cites the filing status and the SERFF tracking number

## Staged ramp by quote volume @v1 [proposed]

- **Given** a rollout configured to accept 10% of eligible Nevada quotes in week one
- **When** the weekly ramp review shows a quote-to-bind ratio within tolerance
- **Then** the share increases to 50% in week two and 100% in week three
- **And** a ratio outside tolerance holds the current share until the next review

## Unappointed producer cannot bind @v1 [published]

- **Given** a producer licensed in Nevada but not appointed by Acme for personal auto
- **When** the producer attempts to bind a quote on the new product
- **Then** the bind is blocked (policy/auto-policy/bind-policy.feature.md)
- **And** an appointment task is created for the agency licensing unit
