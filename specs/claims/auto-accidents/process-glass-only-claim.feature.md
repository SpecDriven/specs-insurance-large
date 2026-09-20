# Process Glass-Only Claim

[Jira:CLM-418](https://jira.com/CLM-418)

Windshield and auto glass losses under comprehensive coverage, routed
through the glass administrator rather than a field adjuster.

## ADAS recalibration billed with the replacement @v1 [proposed]

- **Given** a 2023 vehicle with a forward-facing camera mounted to the windshield
- **When** the shop bills a static recalibration of $320 with the glass invoice
- **Then** the recalibration is covered as part of the glass loss
- **And** the calibration certificate is attached to the claim file before payment releases

## Chip repair with no deductible @v1 [published]

- **Given** an insured with comprehensive coverage and a star-break smaller than a quarter
- **When** the insured calls the glass administrator
- **Then** a mobile chip repair is scheduled at no cost to the insured
- **And** no deductible is applied because repair is elected over replacement

## Full windshield replacement subject to the comprehensive deductible @v1 [published]

- **Given** an insured with a $250 comprehensive deductible and a crack crossing the driver's sightline
- **When** the glass shop completes a replacement billed at $890
- **Then** Acme pays $640 directly to the shop
- **And** the insured pays the $250 deductible at the time of service

## Glass shop not in the administrator network @v1 [proposed]

- **Given** an insured who has already had glass replaced at a non-network shop
- **When** the shop submits an invoice above the network schedule
- **Then** payment is limited to the prevailing competitive price for the market
- **And** the shop is sent the schedule used and an appeal address

## Third glass loss in a policy term triggers review @v1 [proposed]

- **Given** two prior glass-only losses paid in the current six-month term
- **When** a third glass claim is reported
- **Then** the claim is flagged for an SIU referral before payment authorization
- **And** the underwriting team is notified for a mid-term eligibility review

## Zero-deductible glass endorsement in a full-glass state @v1 [published]

- **Given** a Florida policy where the statutory full-glass benefit applies
- **When** a windshield replacement is authorized
- **Then** no deductible is collected regardless of the comprehensive deductible on the declarations page
- **And** the file is coded to the glass-only loss cause so it does not count as a chargeable comprehensive loss
