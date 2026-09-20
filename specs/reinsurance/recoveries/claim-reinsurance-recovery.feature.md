# Claim a Reinsurance Recovery

When a ceded loss exceeds the retention, Acme bills the reinsurers for their
share under the treaty terms
(reinsurance/treaties/define-reinsurance-treaty.feature.md).

[Jira:CLM-2044](https://jira.com/CLM-2044)

## Allocated loss adjustment expense follows the loss @v1 [published]

- **Given** a treaty where ALAE is added to loss before applying the retention
- **And** a loss of $920,000 with $140,000 of defence costs against a $1,000,000 retention
- **When** the recovery is tested
- **Then** the combined $1,060,000 attaches and $60,000 is recoverable

## Excess of loss recovery attaches above the retention @v1 [published]

- **Given** a property loss with $3,400,000 incurred and a $1,000,000 per-risk retention
- **When** the recovery is calculated
- **Then** $2,400,000 is billed to the excess layer
- **And** the retention of $1,000,000 stays net to Acme

## Late notice defence is raised by the reinsurer @v1 [published]

- **Given** a recovery billed 14 months after the loss with a 90-day notice requirement
- **When** the reinsurer disputes the billing for late notice
- **Then** the recovery moves to disputed status
- **And** the amount is excluded from the collectable balance pending resolution (track-recovery-collectability.feature.md)

## Quota share recovery follows the cession percentage @v1 [published]

- **Given** a $180,000 paid auto liability loss on a policy ceded at 40%
- **When** the loss is paid (claims/auto-accidents/settle-collision-claim.feature.md)
- **Then** $72,000 is recoverable from the treaty
- **And** the recovery is posted in the same accounting month as the payment

## Reinstatement premium is billed after a catastrophe recovery @v1 [published]

- **Given** a $20,000,000 layer fully exhausted by a single catastrophe with 2 reinstatements at 100% pro rata
- **When** the layer is reinstated
- **Then** reinstatement premium is calculated on the exhausted amount and the unexpired term
- **And** the reinstated limit is available for subsequent occurrences

## Reserve movement triggers an advance notice @v1 [proposed]

- **Given** a claim whose incurred reserve crosses 50% of the retention
- **When** the reserve change is posted (compliance/audit/maintain-audit-trail.feature.md)
- **Then** an advance loss notice is issued to the reinsurer within 30 days
- **And** the notice includes the current reserve and the coverage position

## Subrogation proceeds are shared in the same proportion @v1 [proposed]

- **Given** a recovered loss of $2,400,000 with $600,000 later received in subrogation
- **When** the subrogation proceeds are applied
- **Then** the reinsurer's share of the recovery is reduced proportionally
- **And** a return of $600,000 is posted against the original billing
