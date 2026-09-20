# Score Claim Fraud Risk

Automated scoring of open claims against fraud indicators, producing the
referrals that feed (fraud-siu/investigation/open-siu-investigation.feature.md).

## Adjuster overrides a high score @v1 [published]

- **Given** a claim scored at 88 with a payment hold
- **When** the adjuster requests an override citing a police report and independent witnesses
- **Then** the override is permitted only with a supervisor's approval
- **And** the override rationale is retained for model feedback

## Claimant appears across unrelated losses @v1 [proposed]

- **Given** a claimant who appears as an occupant on 5 unrelated bodily injury claims in 18 months
- **When** the cross-claim link analysis runs
- **Then** the shared-party indicator is applied to each open claim in the cluster
- **And** all claims in the cluster are surfaced together for review

## Model refresh must not restate closed claims @v1 [proposed]

- **Given** a scoring model version promoted to production on July 1
- **When** claims closed before July 1 are reprocessed
- **Then** closed claims retain the score produced by the model in force at the time
- **And** only open claims receive a score under the new version

## Protected attributes are excluded from the model @v1 [proposed]

- **Given** a model refresh candidate submitted for governance review
- **When** the feature set is audited
- **Then** the candidate is rejected if any feature proxies race, national origin, or ZIP-level demographics
- **And** the exclusion review is filed with the model risk committee

## Recent policy inception raises the score @v1 [published]

- **Given** a total-loss theft claim reported 11 days after the policy's effective date
- **When** the score is calculated
- **Then** the short-inception indicator adds to the score
- **And** the underwriting application is pulled for comparison against the loss facts

## Score band determines the routing @v1 [published]

- **Given** a scored claim
- **When** routing is evaluated
- **Then** the claim is handled according to the published score bands

| score   | routing                              | adjuster action              |
| ------- | ------------------------------------ | ---------------------------- |
| 0 – 39  | Normal handling                      | None                         |
| 40 – 64 | Enhanced documentation               | Recorded statement required  |
| 65 – 84 | SIU referral queue                   | No payment without review    |
| 85+     | Immediate SIU referral               | Payment hold applied         |

## Score is produced at first notice of loss @v1 [published]

- **Given** a newly reported collision claim
- **When** the first notice of loss is completed
- **Then** a fraud risk score between 0 and 100 is calculated from the indicator model
- **And** the contributing indicators are stored with the score for explainability
