# Rate Commercial Auto by Radius and Use

Primary rating factors for commercial auto are radius of operation, business
use class, and size class. These drive the base rate applied to each unit on
the vehicle schedule (schedule-fleet-vehicles.feature.md).

## Local radius under 50 miles rates at the lowest factor @v1 [published]

- **Given** a light truck whose operations stay within 40 miles of the garaging ZIP
- **When** the unit is rated
- **Then** the local radius class is applied
- **And** the base liability rate factor is 1.00

## Missing radius defaults to intermediate with a notice @v1 [proposed]

- **Given** a schedule line saved without a radius of operation
- **When** the quote is rated
- **Then** the intermediate radius class is applied as a default
- **And** the quote carries a condition requiring the radius be confirmed before binding

## Radius crossing 200 miles moves the unit to long haul @v1 [published]

- **Given** a tractor with a stated radius of operation of 201 miles
- **When** the unit is rated
- **Then** the long-haul radius class is applied

| radius band     | miles     | liability factor |
| --------------- | --------- | ---------------- |
| Local           | 0–50      | 1.00             |
| Intermediate    | 51–200    | 1.34             |
| Long haul       | 201+      | 1.87             |

## Reported radius contradicted by telematics triggers review @v1 [proposed]

- **Given** a unit rated as local radius
- **And** submitted telematics shows 18 trips beyond 120 miles in the prior quarter
- **When** the renewal is rated
- **Then** the unit is flagged for underwriter review
- **And** the flag reason "radius understatement suspected" is recorded

## Service use rates below retail and commercial use @v1 [published]

- **Given** a van used only to carry the insured's own tools to job sites
- **When** the business use class is set to service
- **Then** the service use factor of 0.90 is applied to the base rate

## Size class is derived from gross vehicle weight @v1 [published]

- **Given** a unit with a gross vehicle weight rating of 19,500 pounds
- **When** the unit is rated
- **Then** the medium truck size class is applied
