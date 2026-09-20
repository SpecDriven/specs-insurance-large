# Assemble a Policy Packet

The packet is what the insured actually receives: declarations, forms,
required notices, and billing information in a fixed order, delivered by
mail or electronically (../e-delivery/enroll-in-electronic-delivery.feature.md).

## Assembly is retried on a transient vendor failure @v1 [proposed]

- **Given** a packet rejected by the print vendor with a transient transmission error
- **When** the failure is detected
- **Then** assembly is retried up to 3 times at 15-minute intervals
- **And** a persistent failure raises an operations alert naming the policy number

## Duplicate packet request is suppressed @v1 [published]

- **Given** a packet already produced for endorsement transaction 00412 on 4 April 2026
- **When** the same transaction is requested again within 24 hours
- **Then** the duplicate is suppressed
- **And** a copy of the original packet is returned instead

## Missing declarations page halts assembly @v1 [published]

- **Given** a policy whose declarations page failed to generate
- **When** packet assembly runs
- **Then** assembly stops and no partial packet is released
- **And** the policy is queued for regeneration

## Mortgagee receives an abbreviated packet @v1 [published]

- **Given** a homeowners policy with a mortgagee holding an escrow interest
- **When** the packet is assembled
- **Then** the mortgagee receives the declarations page and evidence of insurance only
- **And** the full form set is not mailed to the mortgagee

## Packet follows the standard assembly order @v1 [published]

- **Given** a bound homeowners policy with three endorsements
- **When** the packet is assembled
- **Then** the cover letter, declarations page, base form, endorsements, and notices appear in that order
- **And** endorsements are ordered by form number within the packet

## Page count drives print versus electronic handling @v1 [proposed]

- **Given** an assembled packet of 82 pages for an insured not enrolled in electronic delivery
- **When** the packet is released to production
- **Then** it is routed to the high-volume print vendor rather than the office printer
- **And** the mailing is tracked (../correspondence/track-proof-of-mailing.feature.md)
