# Add Driver to Auto Policy

Adding a resident operator mid-term. The change is written as an
endorsement and re-rates the policy from the effective date
(endorse-policy.feature.md).

**Assigned:** Dana Whitfield

## Adding a fourth driver removes the multi-car ratio credit @v1 [proposed]

- **Given** a policy with three rated drivers and two covered autos
- **When** a fourth driver is added
- **Then** the driver-to-vehicle ratio surcharge of 8% is applied to each vehicle
- **And** the multi-car credit is recalculated on the revised declarations page

## Driver with recent major violation triggers underwriting review @v1 [published]

- **Given** a proposed driver whose MVR shows a DUI conviction within the past 36 months
- **When** the add-driver endorsement is submitted
- **Then** the endorsement is held in pending status and routed to underwriting
- **And** the agent is notified that a decision is due within 5 business days

## Excluded driver named on form PP 03 07 @v1 [published]

- **Given** a household member with a suspended license
- **When** the first named insured signs a named-driver exclusion on form PP 03 07
- **Then** the driver is listed on the declarations page as excluded
- **And** no premium is charged for the excluded driver
- **And** losses arising while the excluded driver operates any covered auto are denied

## Newly licensed teen is added to the household @v1 [published]

- **Given** an in-force auto policy with two rated drivers
- **And** a 16-year-old resident of the household obtains a Class D license on March 4
- **When** the named insured requests the driver be added effective March 4
- **Then** the driver is rated as an occasional operator on the lowest-symbol vehicle
- **And** an additional premium is calculated pro-rata for the remaining 112 days of term

## Retroactive add beyond 30 days is rejected @v1 [published]

- **Given** an add-driver request with a requested effective date of January 2
- **And** today's date is February 20
- **When** the endorsement is priced
- **Then** the request is rejected with reason "backdating limit exceeded"
- **And** the earliest permitted effective date is quoted as January 21

## Student away at school is rated at a reduced factor @v1 [proposed]

- **Given** a rated driver attending a school more than 100 miles from the garaging address
- **And** the driver has no regular access to a covered auto
- **When** the resident-student status is certified for the term
- **Then** the driver is rated at a 0.35 factor
- **And** the status is re-verified at each renewal (renew-policy.feature.md)
