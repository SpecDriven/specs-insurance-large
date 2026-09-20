# Manage Catastrophe Aggregation

Measuring accumulated insured value by catastrophe zone against the
company's reinsurance-driven capacity, and throttling new business as
capacity fills.

## Aggregate released when a policy cancels @v1 [proposed]

- **Given** a $1,100,000 coastal policy cancelled flat from inception
- **When** the cancellation is processed
- **Then** the full insured value is released from the zone aggregate that night
- **And** the zone utilization percentage is recalculated

## Aggregate updated when a policy binds @v1 [published]

- **Given** a wind zone with $412,000,000 of aggregate total insured value
- **When** a $780,000 dwelling binds in that zone
- **Then** the zone aggregate increases by the full dwelling and contents limits
- **And** the aggregate snapshot is timestamped for the nightly reinsurance report

## Aggregation feed fails overnight @v1 [proposed]

- **Given** the exposure aggregation job fails before completing
- **When** quoting opens the next morning
- **Then** the last known good aggregate is used with a 5% conservatism margin
- **And** the stale-data condition is displayed to underwriters until the job succeeds

## Capacity threshold triggers a soft stop @v1 [published]

- **Given** a zone capacity of $500,000,000 with a soft stop at 90%
- **When** the aggregate reaches $451,000,000
- **Then** new business in the zone requires underwriter approval before quoting
- **And** renewals continue to process without additional approval

| utilization | new business | renewals | approval required |
| ----------- | ------------ | -------- | ----------------- |
| Under 75%   | open         | open     | none              |
| 75% to 89%  | open         | open     | none              |
| 90% to 97%  | restricted   | open     | underwriter       |
| 98% or more | closed       | reviewed | chief underwriter |

## Earthquake and wind zones counted independently @v1 [published]

- **Given** a risk sitting in both a wind zone and an earthquake zone
- **When** the policy binds
- **Then** its insured value is added to both zone aggregates
- **And** a stop in one peril does not close the other

## Hard stop closes the zone to new business @v1 [published]

- **Given** a zone aggregate at 98.4% of capacity
- **When** a new submission is received for that zone
- **Then** the submission is declined for catastrophe capacity
- **And** the agent is shown the zone identifier and the expected reopen review date

## Reinsurance treaty renewal resets capacity @v1 [proposed]

- **Given** a new treaty year increasing wind capacity from $500,000,000 to $640,000,000
- **When** the treaty takes effect on July 1
- **Then** zone utilization is recalculated against the new capacity
- **And** any soft or hard stops that no longer apply are lifted automatically
