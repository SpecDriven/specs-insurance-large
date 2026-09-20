# Calculate Producer Commission

Computes what an appointed agent earns on written premium, by line of
business and new versus renewal status
(policy/auto-policy/renew-policy.feature.md).

## Commission rates vary by line and status @v1 [proposed]

- **Given** a producer writing across multiple lines of business
- **When** the commission engine evaluates a transaction
- **Then** the rate is selected from the producer's effective schedule

| line of business | new business | renewal | fully earned fees |
| ---------------- | ------------ | ------- | ----------------- |
| Personal auto    | 15%          | 12%     | no                |
| Homeowners       | 17%          | 14%     | no                |
| Commercial auto  | 12%          | 10%     | no                |
| Renters          | 20%          | 20%     | no                |

## Endorsement premium accrues at the in-force schedule @v1 [proposed]

- **Given** a mid-term endorsement adding $360 of premium to a renewal-term policy
- **When** commission is calculated
- **Then** the renewal rate in effect at the endorsement date is applied
- **And** a rate change that took effect after the policy term began does not apply retroactively

## Fees and surcharges are excluded from the base @v1 [published]

- **Given** a policy with $1,248 premium, a $25 policy fee, and an $18 state surcharge
- **When** commission is calculated
- **Then** only the $1,248 of written premium forms the commission base
- **And** the excluded items are itemized on the producer's detail record

## House account carries no producer commission @v1 [published]

- **Given** a policy written directly by the carrier with no producer of record
- **When** commission is calculated
- **Then** no commission accrues and the transaction is tagged as a house account
- **And** the full premium flows to the carrier's retained margin

## New business commission on personal auto @v1 [published]

- **Given** an appointed producer with the standard personal lines schedule
- **When** a new auto policy binds with $1,248 of written premium
- **Then** commission of $187.20 is accrued at the 15% new business rate
- **And** the accrual is dated to the policy effective date

## Renewal rate replaces the new business rate @v1 [published]

- **Given** an auto policy entering its second term with the same producer of record
- **When** the renewal is issued for $1,180
- **Then** commission accrues at the 12% renewal rate rather than 15%
- **And** the schedule applied is shown on the commission detail

## Terminated producer's book pays the successor @v1 [proposed]

- **Given** a producer whose appointment was terminated 60 days ago
- **And** the book of business was assigned to a successor agency
- **When** a renewal in that book is issued
- **Then** commission accrues to the successor agency from the assignment date forward
- **And** no commission accrues to the terminated producer
