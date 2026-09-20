# Manage a Lienholder Record

Lienholders and lessors hold a financial interest in an insured vehicle or
dwelling and are named as loss payees on the declarations page. Acme keeps a
central party record so notices reach the correct servicing address.

## Add a lienholder as loss payee @v1 [published]

- **Given** a financed 2024 Honda CR-V on a personal auto policy
- **When** the agent adds Cascade Credit Union with loan number 44920117
- **Then** the lienholder appears as loss payee on the declarations page for that vehicle
- **And** an evidence of insurance document is queued for the lienholder

## Lessor requires additional insured status @v1 [published]

- **Given** a leased vehicle on a personal auto policy
- **When** the agent records Ridgeline Leasing as the lessor
- **Then** the lessor is added as both loss payee and additional insured
- **And** the lease endorsement form AA-2118 is attached to the policy

## Loan number is required for a lienholder @v1 [published]

- **Given** an agent adding a lienholder without a loan or account number
- **When** the change is submitted
- **Then** the change is rejected because the lienholder requires a loan reference
- **And** the vehicle remains without a loss payee until the reference is supplied

## Loan payoff removes the interest @v1 [proposed]

- **Given** a vehicle with an active lienholder
- **When** the insured supplies a payoff letter dated within 60 days
- **Then** the lienholder is removed effective the payoff date
- **And** the lienholder is notified that the interest was released (notify-lienholder-of-change.feature.md)

## Merge duplicate lienholder parties @v1 [proposed]

- **Given** two party records for the same credit union differing only by a suite number
- **When** the data steward merges them into the surviving record
- **Then** every policy referencing either record points to the survivor
- **And** the retired record is kept as an alias so inbound documents still resolve

## Undeliverable lienholder address is quarantined @v1 [proposed]

- **Given** a lienholder whose mailing address returns two consecutive postal non-deliverables
- **When** the third notice is queued
- **Then** the lienholder record is quarantined and the notice is held
- **And** a servicing task asks the insured to confirm the current servicing address
