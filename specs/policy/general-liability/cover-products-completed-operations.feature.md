# Cover Products and Completed Operations

The products-completed operations hazard covers bodily injury and property
damage arising out of the insured's product or out of work after it has been
put to its intended use. It carries its own aggregate limit.

## Claim from a finished installation falls in the completed operations hazard @v1 [published]

- **Given** an HVAC contractor who finished a rooftop unit installation on May 2
- **When** a coupling fails on August 19 and floods the building below
- **Then** the claim is coded to the products-completed operations hazard
- **And** it erodes the products aggregate rather than the general aggregate

## Completed operations tail after cancellation @v1 [proposed]

- **Given** an occurrence-form policy cancelled on March 31, 2026
- **When** a claim is reported in 2028 for work completed in January 2026
- **Then** the claim is covered under the 2026 policy
- **And** the reserve is posted against that policy term (claims/auto-accidents/assign-adjuster.feature.md)

## Products aggregate exhaustion stops further payment @v1 [proposed]

- **Given** a $2,000,000 products aggregate with $1,940,000 paid
- **When** a new covered product claim is valued at $180,000
- **Then** only the remaining $60,000 of aggregate is available
- **And** the named insured and the retail agent are notified in writing that the aggregate is nearly exhausted

## Work still in progress is not completed operations @v1 [published]

- **Given** a partially completed framing job the contractor is still working on
- **When** a wall collapses and injures a passerby
- **Then** the claim is coded to premises and operations
- **And** it erodes the general aggregate

## Your work exclusion bars the cost of repairing the product @v1 [published]

- **Given** a defective weld performed by the named insured
- **When** the insured seeks the cost of re-welding the joint
- **Then** the repair of the insured's own work is excluded
- **And** resulting damage to other property is covered
