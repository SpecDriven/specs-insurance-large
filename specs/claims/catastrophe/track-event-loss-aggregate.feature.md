# Track Event Loss Aggregate

Rolling up paid, reserved, and incurred amounts for a declared catastrophe
so that reinsurance attachment and reporting stay accurate.

## Crossing the reinsurance retention raises an alert @v1 [published]

- **Given** a per-occurrence retention of $10,000,000
- **When** gross incurred for the event crosses $10,000,000
- **Then** the reinsurance unit is alerted within the same processing cycle
- **And** a cession estimate is prepared for the first excess layer

## Event is closed for aggregation @v1 [published]

- **Given** a CAT event with no open claims and no reopened claims for 180 days
- **When** the event closure review runs
- **Then** the event is closed to new attachments
- **And** the final aggregate is frozen and archived with the declaration record

## Incurred rolls up paid plus outstanding reserves @v1 [published]

- **Given** a declared CAT event with $6,200,000 paid indemnity and $9,100,000 in outstanding reserves
- **When** the nightly aggregate is calculated
- **Then** the event's gross incurred is reported as $15,300,000
- **And** allocated loss adjustment expense is reported as a separate line

## Late-reported claims restate a closed reporting period @v1 [proposed]

- **Given** a monthly bordereau already transmitted for the event
- **When** 40 claims are attached to the event after the cutoff
- **Then** a restated bordereau is produced for the affected period
- **And** the restatement reason and claim count are recorded on the event

## Subrogation recoveries reduce the net aggregate @v1 [proposed]

- **Given** an event with $15,300,000 gross incurred
- **When** $480,000 in subrogation recoveries is booked (claims/subrogation/track-subrogation-recovery.feature.md)
- **Then** net incurred for the event is reported as $14,820,000
- **And** gross incurred remains unchanged for reinsurance reporting
