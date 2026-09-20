# Deploy Catastrophe Response Team

Staffing a declared event with staff adjusters, independent adjusters, and
mobile claim units.

## Access is blocked by an evacuation order @v1 [published]

- **Given** a parish under a mandatory evacuation order
- **When** the deployment plan is published
- **Then** field inspection in that parish is deferred and desk handling is used
- **And** the affected insureds receive a communication explaining the delay

## Deployment rotation prevents adjuster burnout @v1 [proposed]

- **Given** a staff adjuster who has been deployed for 21 consecutive days
- **When** the rotation review runs
- **Then** the adjuster is scheduled off the event and a replacement is requisitioned
- **And** open claims are reassigned with a written handoff summary

## Independent adjuster must hold a resident or emergency license @v1 [published]

- **Given** an independent adjuster rostered for deployment to Louisiana
- **When** the roster is validated before travel is booked
- **Then** the adjuster is cleared only if an active resident or emergency adjuster license is on file
- **And** an adjuster without a valid license is removed from the roster

## Mobile claim unit placement follows claim density @v1 [proposed]

- **Given** claim counts of 810 in Lee County and 130 in Hendry County
- **When** mobile unit locations are selected
- **Then** the first unit is sited in Lee County within 20 miles of the density centroid
- **And** the unit's operating hours and address are published to the carrier's storm page

## Staffing model sizes the deployment @v1 [published]

- **Given** a declared CAT event projecting 3,200 claims
- **When** the deployment plan is generated
- **Then** adjusters are requisitioned against the published staffing ratios

| projected claims | staff adjusters | independent adjusters | mobile units |
| ---------------- | --------------- | --------------------- | ------------ |
| under 500        | 6               | 0                     | 0            |
| 500 – 1,500      | 15              | 20                    | 1            |
| 1,500 – 5,000    | 30              | 90                    | 3            |
| over 5,000       | 45              | 220                   | 6            |

## Vendor capacity shortfall escalates to a second firm @v1 [proposed]

- **Given** a requisition for 90 independent adjusters and a primary vendor confirming only 55
- **When** the shortfall is detected 48 hours before deployment
- **Then** the secondary vendor on the CAT panel is engaged for the remaining 35
