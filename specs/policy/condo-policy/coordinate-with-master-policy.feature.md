# Coordinate With HOA Master Policy

Determining where the association's master policy stops and the unit
owner's HO-6 begins. The master policy's form type governs the split, and
the two policies must not pay twice for the same property.

**Assigned:** Miguel Santos

## All-in master policy reduces the unit owner's dwelling need @v1 [published]

- **Given** a master policy insuring fixtures and improvements as originally installed
- **When** the coverage split is documented
- **Then** Coverage A is limited to owner-installed betterments and improvements
- **And** the recommended limit is reduced to $15,000

## Bare-walls master policy leaves the interior to the unit owner @v1 [published]

- **Given** a master policy insuring the building as originally constructed, excluding unit interiors
- **When** the coverage split is documented on the HO-6
- **Then** drywall surfaces, cabinetry, flooring, and fixtures are assigned to Coverage A
- **And** the recommended Coverage A limit is set to the interior build-out cost

## Concurrent loss is apportioned between the two policies @v1 [published]

- **Given** a burst riser in a common wall damaging both the common element and unit 4B's flooring
- **When** both carriers adjust the loss
- **Then** the common element repair is paid by the master policy
- **And** the unit flooring is paid under the HO-6 Coverage A
- **And** the adjusters exchange scopes to prevent duplicate payment

## Conflicting certificates are resolved against the recorded declaration @v1 [proposed]

- **Given** a certificate describing the master policy as all-in
- **And** the recorded condominium declaration describing a bare-walls allocation
- **When** the conflict is identified
- **Then** the recorded declaration governs the coverage split
- **And** the discrepancy is reported to the association's managing agent

## Master policy deductible increase is reflected in the HO-6 @v1 [proposed]

- **Given** the association raises its master policy deductible from $25,000 to $100,000
- **When** the unit owner's renewal is prepared
- **Then** the loss assessment limit is reviewed against the higher deductible
- **And** the insured is offered an increased limit (cover-loss-assessment.feature.md)

## Master policy lapse exposes the unit owner @v1 [proposed]

- **Given** notice that the association's master policy has lapsed for non-payment
- **When** the lapse is recorded on the unit owner's file
- **Then** the insured is notified in writing within 3 business days
- **And** the file is flagged for a coverage review at the next renewal
