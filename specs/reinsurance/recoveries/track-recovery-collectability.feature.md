# Track Recovery Collectability

Billed recoveries (claim-reinsurance-recovery.feature.md) are aged, tested
against reinsurer security, and provisioned where collection is doubtful.

**Assigned:** Miguel Santos

## Aged balances drive the provision for uncollectible reinsurance @v1 [published]

- **Given** the quarter-end reinsurance recoverable balance
- **When** the collectability analysis runs
- **Then** each balance is aged from its billing date and provisioned at the schedule rate

| age of balance | provision rate |
| -------------- | -------------- |
| 0-90 days      | 0%             |
| 91-180 days    | 2%             |
| 181-365 days   | 10%            |
| Over 365 days  | 25%            |

## Commutation settles the remaining balance @v1 [proposed]

- **Given** an open recoverable of $3,100,000 on a run-off treaty
- **When** a commutation is agreed at $2,650,000
- **Then** the balance is settled and the treaty is closed to further recovery
- **And** the $450,000 shortfall is recognized in the current period

## Disputed balance is excluded from the aging @v1 [published]

- **Given** a $60,000 recovery in formal dispute over a late notice defence
- **When** the aging report is produced
- **Then** the disputed amount is reported separately from aged recoverables
- **And** a specific reserve is set at the coverage counsel's assessment

## Rating downgrade escalates the exposure @v1 [proposed]

- **Given** a participating reinsurer downgraded from A- to BB+
- **When** the security review runs
- **Then** all open balances with that reinsurer are escalated to the reinsurance credit committee
- **And** new cessions to that reinsurer are suspended pending review

## Unauthorized reinsurer requires collateral @v1 [published]

- **Given** a recovery due from a reinsurer not authorized in Acme's domiciliary state
- **When** the statutory credit test is applied
- **Then** credit is allowed only to the extent of a letter of credit or funds withheld
- **And** any uncollateralized excess is deducted from surplus
