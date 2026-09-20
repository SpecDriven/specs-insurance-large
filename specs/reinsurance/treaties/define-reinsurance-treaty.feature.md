# Define a Reinsurance Treaty

Treaty terms determine which policies are ceded automatically, at what
retention, and on what basis. The definition drives cession
(reinsurance/cessions/cede-premium-to-treaty.feature.md) and recovery
(reinsurance/recoveries/claim-reinsurance-recovery.feature.md).

## Excess of loss treaty attaches above the retention @v1 [published]

- **Given** a property per-risk excess of loss layer of $4,000,000 excess of $1,000,000
- **When** the treaty is defined
- **Then** the retention is recorded as $1,000,000 per risk
- **And** losses are ceded only for the portion above the retention up to the $4,000,000 limit

## Layered program stacks to the program limit @v1 [proposed]

- **Given** a catastrophe program built from three layers
- **When** the program is assembled
- **Then** each layer records its attachment, limit, and reinstatement terms

| layer   | limit         | attachment    | reinstatements | reinstatement premium |
| ------- | ------------- | ------------- | -------------- | --------------------- |
| Layer 1 | $20,000,000   | $10,000,000   | 2              | 100% pro rata         |
| Layer 2 | $50,000,000   | $30,000,000   | 1              | 100% pro rata         |
| Layer 3 | $100,000,000  | $80,000,000   | 1              | Free                  |

## Occurrence limit caps a single catastrophe @v1 [proposed]

- **Given** a catastrophe treaty with a $50,000,000 occurrence limit
- **And** a hurricane producing $68,000,000 of ceded loss within the 72-hour clause
- **When** the recovery is calculated
- **Then** the ceded recovery is capped at $50,000,000
- **And** the excess of $18,000,000 is retained net

## Quota share treaty cedes a fixed proportion @v1 [published]

- **Given** a 40% quota share treaty on the personal auto book effective 2026-01-01
- **When** the treaty is activated
- **Then** 40% of subject premium and 40% of subject losses are ceded on every qualifying policy
- **And** a 28% ceding commission is payable to Acme on ceded premium

## Subject business is defined by class and territory @v1 [published]

- **Given** a treaty subject to homeowners business in the Southeast region
- **When** a commercial property policy in Georgia is evaluated
- **Then** the policy is outside the treaty's subject business
- **And** it is routed to facultative consideration instead (manage-facultative-placement.feature.md)

## Treaty cannot be activated without signed slips @v1 [published]

- **Given** a treaty whose participating reinsurers hold 85% of the placed share in signed slips
- **When** the treaty is activated
- **Then** activation is blocked until 100% of the share is signed or the shortfall is formally retained
- **And** the unsigned participants are listed on the placement exception report

## Treaty renewal carries forward unamended terms @v1 [proposed]

- **Given** an expiring treaty renewing 2027-01-01 with only the ceding commission amended
- **When** the renewal is created
- **Then** retention, limits, and subject business carry forward unchanged
- **And** the amended commission applies only to business effective on or after the renewal date
