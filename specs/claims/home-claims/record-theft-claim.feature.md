# Record Theft and Burglary Claim

Theft losses to personal property under Coverage C, including the special
sublimits that apply to jewelry, firearms, and cash.

## Burglary with forced entry and a police report @v1 [published]

- **Given** an in-force HO-3 policy and a break-in through a rear patio door
- **When** the insured reports the loss with a police report number and a list of stolen items
- **Then** a theft claim is opened under Coverage C
- **And** a contents inventory is requested from the insured (claims/property-claims/manage-contents-inventory.feature.md)
- **And** the forced-entry damage to the door is adjusted under Coverage A

## Cash and precious metals sublimit @v1 [proposed]

- **Given** $3,400 in cash and $900 in silver coins reported stolen
- **When** the loss is adjusted under the special limits of liability
- **Then** the cash recovery is capped at $200 and the coin recovery at $200
- **And** the sublimit table from the policy form is included with the settlement letter

## Inflated inventory referred to SIU @v1 [proposed]

- **Given** a contents list including four televisions and three laptops in a one-bedroom rental
- **When** the adjuster cannot verify ownership through receipts, photos, or credit records
- **Then** an SIU referral is opened and the payment authority is suspended
- **And** an examination under oath is scheduled under the duties-after-loss condition

## Jewelry loss exceeds the special sublimit @v1 [published]

- **Given** a stolen ring with a documented replacement cost of $9,200 and no scheduled personal property endorsement
- **When** the claim is adjusted
- **Then** payment is limited to the $1,500 theft sublimit for jewelry and watches
- **And** the insured is offered a scheduled personal property quote at renewal

## Mysterious disappearance with no evidence of theft @v1 [published]

- **Given** an insured who cannot state when or where a watch went missing
- **When** the adjuster completes the investigation with no police report and no sign of entry
- **Then** the claim is denied as a mysterious disappearance rather than a covered theft
- **And** the denial cites the requirement of a covered peril under the named perils for Coverage C

## Property stolen from a vehicle away from the residence @v1 [proposed]

- **Given** a laptop stolen from the insured's parked car at an airport
- **When** the claim is evaluated
- **Then** the loss is covered under the off-premises Coverage C limit of 10% of Coverage C
- **And** the auto comprehensive coverage is confirmed as not applicable to personal effects
