# Cover Equipment Breakdown

Equipment breakdown coverage responds to mechanical, electrical, and
pressure system accidents that the standard causes of loss form excludes.

## Boiler accident damages the building @v1 [published]

- **Given** an equipment breakdown endorsement attached to a commercial property policy
- **When** a low-water condition ruptures the building's hot water boiler
- **Then** damage to the boiler and resulting building damage are covered
- **And** the $2,500 equipment breakdown deductible applies

## Jurisdictional inspection is a condition of coverage @v1 [published]

- **Given** a pressure vessel subject to state jurisdictional inspection in Pennsylvania
- **When** the insured refuses access for the scheduled inspection
- **Then** the equipment breakdown endorsement is subject to cancellation on 30 days notice

## Production machinery outage adds business income @v1 [proposed]

- **Given** an equipment breakdown endorsement with business income included
- **When** a covered transformer accident halts a production line for 9 days
- **Then** lost net income for the outage is paid (cover-business-interruption.feature.md)
- **And** expediting expense up to $25,000 is reimbursed

## Spoilage of perishable stock after a covered breakdown @v1 [proposed]

- **Given** a grocery with $60,000 of refrigerated stock
- **When** a covered compressor accident raises case temperatures for 14 hours
- **Then** spoilage is paid subject to the $100,000 spoilage sublimit
- **And** the insured must provide an inventory of discarded stock

## Wear and tear alone is excluded @v1 [published]

- **Given** a chiller compressor that fails from gradual bearing wear with no sudden accident
- **When** the claim is reviewed
- **Then** the claim is denied under the wear and tear exclusion
- **And** the denial cites the absence of a covered accident
