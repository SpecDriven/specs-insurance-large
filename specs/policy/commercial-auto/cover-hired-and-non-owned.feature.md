# Cover Hired and Non-Owned Auto

Hired auto and employers non-ownership liability extend the business auto
policy to vehicles the named insured rents or that employees drive on company
business but do not own.

## Add hired and non-owned liability to a policy with owned units @v1 [published]

- **Given** a business auto policy with three owned power units
- **When** the agent adds covered auto symbols 8 and 9 for liability
- **Then** hired and non-owned liability attaches at the policy liability limit
- **And** the premium is rated on annual cost of hire and employee headcount

## Audit of cost of hire generates additional premium @v1 [published]

- **Given** a policy rated on an estimated $25,000 annual cost of hire
- **And** the audited cost of hire is $61,400
- **When** the audit is processed at expiration
- **Then** additional premium is billed for the difference
- **And** the insured receives an audit statement with 30 days to dispute

## Hired physical damage requires a stated cost of hire @v1 [published]

- **Given** an insured requests hired auto physical damage coverage
- **When** no annual cost of hire is entered
- **Then** the coverage cannot be added
- **And** the agent is prompted to supply the prior twelve months of rental expense

## Non-owned liability is excess over the driver's personal auto policy @v1 [published]

- **Given** an employee causes an at-fault accident driving her own sedan on a sales call
- **And** her personal auto policy carries a $100,000 per-person limit
- **When** a third-party claim is presented
- **Then** the employer's non-owned liability responds only above the personal policy limit

## Rented auto held more than 30 days is treated as owned @v1 [proposed]

- **Given** a truck rented on a six-month lease
- **When** the insured reports the rental under hired auto
- **Then** the unit must instead be added to the vehicle schedule (schedule-fleet-vehicles.feature.md)
- **And** hired auto premium is not charged for that unit

## Volunteer drivers are not employees for non-ownership rating @v1 [proposed]

- **Given** a nonprofit reports 40 employees and 130 volunteer drivers
- **When** employers non-ownership liability is rated
- **Then** only the 40 employees are counted in the rating basis
- **And** a note directs the underwriter to consider a volunteer driver endorsement
