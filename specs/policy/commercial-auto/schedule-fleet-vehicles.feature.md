# Schedule Fleet Vehicles

Maintenance of the vehicle schedule attached to a commercial auto policy.
The schedule drives rating (rate-by-radius-and-use.feature.md) and appears
on the declarations page.

**Assigned:** Miguel Santos

## Add a newly acquired auto within the reporting window @v1 [published]

- **Given** a policy written with covered auto symbol 1 for liability
- **And** the named insured acquires a 2024 Isuzu NPR on June 4
- **When** the insured reports the acquisition on June 20
- **Then** the auto is added to the schedule effective June 4
- **And** premium is charged pro-rata from the acquisition date

## Delete a sold unit and return unearned premium @v1 [published]

- **Given** a scheduled 2018 Freightliner M2 sold on August 12
- **When** the agent removes the unit from the schedule
- **Then** the vehicle is deleted effective August 12
- **And** unearned premium for that unit is returned pro-rata (billing/refund-unearned-premium.feature.md)

## Duplicate VIN is rejected @v1 [proposed]

- **Given** VIN 1FTBW2CM7NKA41122 already appears on the schedule
- **When** the agent attempts to add the same VIN a second time
- **Then** the addition is rejected
- **And** the agent is shown the existing schedule line number

## Loss payee must be recorded before physical damage is added @v1 [published]

- **Given** a financed vehicle being added with comprehensive and collision coverage
- **When** the agent saves the schedule line without a loss payee
- **Then** the save is blocked
- **And** the agent is prompted for the lienholder name and address

## Newly acquired auto reported after 30 days is added at report date @v1 [published]

- **Given** a policy with a 30-day newly acquired auto reporting window
- **And** an auto acquired on February 1 is first reported on March 15
- **When** the schedule is updated
- **Then** physical damage coverage attaches on March 15 rather than February 1
- **And** the insured is notified in writing that the gap is not covered

## Replace a totaled unit with a like vehicle @v1 [proposed]

- **Given** a scheduled box truck declared a total loss on the policy
- **When** the insured substitutes a replacement unit of the same body type and value
- **Then** the replacement inherits the deleted unit's coverages and deductibles
- **And** no additional premium is charged if the stated value is within 10% of the prior unit
