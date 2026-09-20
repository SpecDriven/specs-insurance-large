# Schedule Multiple Locations

A commercial property policy may schedule many premises and buildings. Each
location carries its own limits, deductibles, and rating characteristics,
and feeds the protective safeguard requirements
(apply-protective-safeguards.feature.md).

## Add a third location mid-term @v1 [published]

- **Given** a policy with locations 001 and 002 effective April 1
- **When** the insured acquires a warehouse in Tulsa on September 15
- **Then** location 003 is added to the schedule effective September 15
- **And** a revised declarations page listing all three locations is issued

## Delete a location sold to a third party @v1 [proposed]

- **Given** location 002 was sold on October 3
- **When** the agent removes the location from the schedule
- **Then** coverage terminates at 12:01 a.m. on October 3
- **And** unearned premium for that location is returned pro-rata

## Newly acquired property is covered for 30 days at a sublimit @v1 [published]

- **Given** a policy with the newly acquired or constructed property extension
- **When** the insured buys a building on July 8 and does not report it
- **Then** coverage applies for 30 days or until policy expiration, whichever is first
- **And** the extension is limited to $500,000 per building

## Per-location deductibles differ across the schedule @v1 [proposed]

- **Given** a schedule of four locations
- **When** the underwriter sets a $25,000 deductible on the coastal location and $5,000 elsewhere
- **Then** each location's deductible is shown separately on the declarations
- **And** a loss at the coastal location applies the $25,000 deductible

## Statement of values must total the blanket limit @v1 [published]

- **Given** a blanket limit of $6,000,000 across six locations
- **When** the submitted statement of values totals $6,740,000
- **Then** the schedule is rejected as out of balance
- **And** the agent is shown the variance by location

## Two locations within one block trigger a single-risk aggregation @v1 [published]

- **Given** locations 004 and 005 are 180 feet apart with no fire division wall
- **When** catastrophe accumulation is calculated
- **Then** both locations are aggregated into one modeled risk
- **And** the combined total insured value is tested against the branch line limit
