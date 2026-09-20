# Calculate a Driving Score

Trips are scored on hard braking, rapid acceleration, speeding, phone
handling, and night driving. The composite score drives the renewal discount
(apply-telematics-discount.feature.md).

**Assigned:** Jonas Berg

## Composite score is a weighted blend of behaviour factors @v1 [published]

- **Given** a completed 90-day monitoring period with 142 scored trips
- **When** the composite score is calculated
- **Then** each behaviour factor is scored on a 0 to 100 scale and weighted

| factor              | weight |
| ------------------- | ------ |
| Hard braking        | 30%    |
| Rapid acceleration  | 20%    |
| Speeding            | 25%    |
| Phone handling      | 15%    |
| Night driving       | 10%    |

## Corrupt telemetry is discarded before scoring @v1 [proposed]

- **Given** a trip reporting an implausible acceleration of 3.4 g
- **When** the trip is validated
- **Then** the trip is discarded as corrupt
- **And** a device health flag is raised if three such trips occur in a week

## Hard braking events are normalized per 100 miles @v1 [published]

- **Given** a driver with 18 hard braking events across 1,150 miles
- **When** the braking factor is scored
- **Then** the rate is expressed as 1.57 events per 100 miles
- **And** raw event counts are not compared across drivers with different mileage

## Multi-driver households score each driver separately @v1 [published]

- **Given** a policy with three rated drivers sharing two vehicles
- **When** the period closes
- **Then** a separate score is produced for each identified driver
- **And** unattributed trips are assigned to the vehicle's primary driver

## Passenger trips are excluded on request @v1 [proposed]

- **Given** a trip the driver tags as a passenger trip within 72 hours
- **When** the tag is accepted
- **Then** the trip is excluded from scoring
- **And** no more than 15% of a period's trips may be excluded this way

## Score is recalculated when a trip is reclassified @v1 [proposed]

- **Given** a scored period containing a trip later overturned on dispute (telematics/feedback/dispute-a-trip-event.feature.md)
- **When** the dispute is resolved in the driver's favour
- **Then** the period score is recalculated without the disputed event
- **And** the revised score replaces the prior score on the rating record

## Speeding is measured against the posted limit @v1 [published]

- **Given** a trip segment recorded at 78 mph where the posted limit is 65 mph
- **When** the segment is evaluated
- **Then** the excess of 13 mph is counted against the speeding factor
- **And** segments with no posted limit data are excluded from the denominator
