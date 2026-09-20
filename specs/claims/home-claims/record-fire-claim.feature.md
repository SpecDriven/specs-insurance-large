# Record Fire Claim

[Jira:INS-902](https://jira.com/INS-902)

Fire, smoke, and lightning losses. Large fires open concurrent dwelling,
contents, and additional living expense exposures
(manage-additional-living-expense-claim.feature.md).

## Arson investigation suspends payment @v1 [published]

- **Given** a fire marshal report identifying multiple points of origin
- **When** SIU opens an arson investigation
- **Then** all payment authority is suspended pending the investigation outcome
- **And** the named insured is placed on notice of the intentional acts exclusion
- **And** a reservation of rights letter is issued within 5 business days

## Kitchen fire with smoke throughout the dwelling @v1 [published]

- **Given** an in-force HO-3 policy and a grease fire contained to the kitchen
- **When** the insured reports fire damage plus smoke odor in adjoining rooms
- **Then** separate estimate line groups are created for fire damage, smoke remediation, and contents cleaning
- **And** an industrial hygienist is engaged when smoke odor is reported beyond the room of origin

## Lightning strike damages electronics without fire @v1 [proposed]

- **Given** a documented lightning strike to the service mast
- **When** the insured reports failed HVAC controls, a television, and a well pump
- **Then** the loss is adjusted under the lightning peril with no fire damage line
- **And** an electrical engineer report is obtained where the cause of failure is contested

## Total fire loss triggers the extended replacement cost endorsement @v1 [published]

- **Given** a dwelling insured for $420,000 with 25% extended replacement cost
- **When** the rebuild estimate comes in at $498,000
- **Then** the additional limit of $105,000 is made available above Coverage A
- **And** the insured must actually rebuild at the same location to access the extended amount

## Vacant dwelling at the time of the fire @v1 [proposed]

- **Given** a dwelling unoccupied and unfurnished for 84 consecutive days before the loss
- **When** the vacancy is confirmed by utility records and neighbor statements
- **Then** the claim is denied under the 60-day vacancy provision
- **And** the insured is told a vacancy permit endorsement was available before the loss

## Wildfire loss in a designated brush zone @v1 [proposed]

- **Given** a dwelling in a California brush hazard zone with a wildfire mandatory evacuation order in effect
- **When** the insured reports the property as destroyed but cannot access the site
- **Then** an advance payment of 30% of Coverage C is issued without an itemized inventory
- **And** additional living expense is opened at the time of the evacuation order
