# Endorse Landlord Policy

Mid-term changes to a DP-3: occupancy changes, added locations, interested
parties, and optional coverages
(quote-landlord-policy.feature.md).

[Jira:CLM-337](https://jira.com/CLM-337)

## Adding a property manager as additional interested party @v1 [proposed]

- **Given** the insured engages Ridgeline Property Management to operate the rentals
- **When** the manager is endorsed as an additional interested party
- **Then** the manager receives copies of cancellation and non-renewal notices
- **And** no coverage is extended to the manager's own operations

## Adding a scheduled location mid-term @v1 [published]

- **Given** an in-force scheduled dwelling account with four locations
- **When** a fifth rental at 88 Larkspur Road is added effective October 1
- **Then** the location is added to the schedule with its own dwelling and liability limits
- **And** premium is charged pro-rata for the 122 remaining days of the term

## Building ordinance coverage is added at 25% @v1 [published]

- **Given** a dwelling built in 1962 in a jurisdiction with an updated building code
- **When** ordinance or law coverage is added at 25% of the dwelling limit
- **Then** $52,500 is available for increased cost of construction after a covered loss
- **And** the coverage applies to demolition and undamaged-portion costs

## Converting to owner-occupied requires a form change @v1 [published]

- **Given** the insured reports moving into the dwelling as a primary residence
- **When** the occupancy change is endorsed
- **Then** the DP-3 is rewritten onto the HO-3 form effective the move-in date
- **And** fair rental value coverage is removed from the policy

## Mid-term dwelling limit reduction is refused below 80% of replacement cost @v1 [published]

- **Given** a replacement cost estimate of $268,000 and a current dwelling limit of $240,000
- **When** the insured requests a reduction to $180,000
- **Then** the reduction is refused as below the 80% coinsurance threshold
- **And** the lowest permitted limit of $214,400 is quoted instead

## Removing a tenant-occupied unit from a duplex @v1 [proposed]

- **Given** a duplex insured with both units leased
- **When** one unit is taken out of service for a long renovation
- **Then** the unit is endorsed to under-renovation status with a vacancy acknowledgement
- **And** theft and vandalism coverage is suspended for that unit
