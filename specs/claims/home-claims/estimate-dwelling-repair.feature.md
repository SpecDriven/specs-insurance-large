# Estimate Dwelling Repair

Scope and pricing of dwelling repairs under Coverage A, written on the
carrier's Xactimate price list for the loss ZIP code and month.

## Coinsurance penalty on an underinsured dwelling @v1 [proposed]

- **Given** a dwelling with a replacement cost of $500,000 insured for $320,000 under an 80% coinsurance requirement
- **When** a $60,000 partial loss is adjusted
- **Then** the loss payment is reduced by the coinsurance factor of 0.80
- **And** the calculation is shown line by line in the settlement letter

## Contractor invoice exceeds the approved estimate @v1 [proposed]

- **Given** an approved estimate of $34,500 and a final invoice of $47,200
- **When** the contractor requests payment of the difference
- **Then** a line-level reconciliation is required before any supplemental payment
- **And** changes in scope are separated from changes in unit price in the response

## Matching of undamaged adjoining surfaces @v1 [published]

- **Given** damage to one wall of an open-concept living area with continuous flooring
- **When** the adjuster scopes the flooring replacement
- **Then** the continuous flooring area is replaced to a reasonable matching boundary
- **And** the matching decision and the breakpoint used are photographed and documented

## Ordinance or law upgrade required by the inspector @v1 [proposed]

- **Given** a building inspector requiring hardwired smoke detectors and updated egress windows during the repair
- **When** the upgrade costs are submitted at $7,800
- **Then** the upgrades are paid under the ordinance or law coverage at 10% of Coverage A
- **And** any cost above that sublimit is the insured's responsibility

## Overhead and profit withheld on a single-trade repair @v1 [published]

- **Given** a repair requiring only a drywall contractor
- **When** the estimate is reviewed
- **Then** the 10% and 10% general contractor overhead and profit are not included
- **And** the reason is documented so the position can be explained on appeal

## Scope written on the current price list @v1 [published]

- **Given** a covered water loss in ZIP 30144 with a date of loss of March 8
- **When** the adjuster writes the repair scope
- **Then** the estimate uses the March price list for that ZIP
- **And** overhead and profit are included because three or more trades are required
- **And** the estimate is shared with the insured within 5 business days of inspection
