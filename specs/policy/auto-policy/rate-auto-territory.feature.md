# Rate Auto by Territory

Territory assignment drives the base rate for liability, collision, and
comprehensive. Territory is derived from the garaging address, not the
mailing address.

## Garaging change mid-term re-rates from the change date @v1 [proposed]

- **Given** an in-force policy rated in territory 011
- **When** the insured reports a move to an address in territory 042 effective June 15
- **Then** the policy is re-rated pro-rata from June 15 through the expiration date
- **And** an additional premium notice is issued (billing/collect-premium.feature.md)

## Garaging ZIP maps to a filed rating territory @v1 [published]

- **Given** a vehicle garaged at 1420 Winslow Avenue, Cleveland, Ohio 44102
- **When** the rating engine resolves the territory
- **Then** territory 042 is assigned from the Ohio rate filing effective 2026-01-01
- **And** the territory factor is applied to the liability and physical damage base rates

| territory | description        | liability factor | collision factor |
| --------- | ------------------ | ---------------- | ---------------- |
| 011       | Rural counties     | 0.78             | 0.84             |
| 042       | Urban core         | 1.46             | 1.31             |
| 067       | Suburban ring      | 1.05             | 1.02             |
| 088       | Coastal high-theft | 1.22             | 1.63             |

## Out-of-state garaging suspends rating and refers to underwriting @v1 [proposed]

- **Given** a policy issued under the Ohio rate filing
- **When** the reported garaging address is in Indiana
- **Then** no territory factor is applied
- **And** the policy is referred for a state transfer review

## Split-ZIP address is resolved by county code @v1 [published]

- **Given** a garaging ZIP that spans two counties with different territory assignments
- **When** the address is standardized against the USPS file
- **Then** the county FIPS code determines the territory
- **And** the resolved territory is stored on the vehicle record for the term

## Territory factor change at renewal is capped by the rate-capping rule @v1 [proposed]

- **Given** a renewal whose territory factor increased from 1.05 to 1.46
- **And** the filed capping rule limits any single-term increase to 25%
- **When** the renewal premium is computed
- **Then** the increase is capped at 25% and the residual is deferred to the following term
- **And** the capping adjustment appears as a line item on the declarations page

## Unmapped ZIP falls back to the statewide base territory @v1 [published]

- **Given** a newly created ZIP code not present in the current rate filing
- **When** the rating engine cannot resolve a territory
- **Then** the statewide base territory is used
- **And** a rating exception is logged for the actuarial team
