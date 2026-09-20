# Declare a Catastrophe Event

Creating the event record that groups claims from a single natural
catastrophe, sets the CAT code, and switches downstream handling into
catastrophe mode (triage-catastrophe-claims.feature.md).

**Assigned:** Jonas Berg

## Declaration notifies reinsurance and regulatory contacts @v1 [proposed]

- **Given** a newly declared catastrophe event with a modeled estimate above the $10,000,000 retention
- **When** the declaration is published
- **Then** the reinsurance unit receives an event notice the same business day
- **And** the affected states' departments of insurance receive the carrier's CAT response contact

## Declaration threshold not met @v1 [published]

- **Given** a hailstorm producing 61 claims and a modeled estimate of $900,000
- **When** the CAT committee reviews the event
- **Then** no catastrophe event is declared
- **And** the event is logged as a monitored weather incident for 14 days

## Duplicate event declaration is rejected @v1 [proposed]

- **Given** an active CAT event covering Travis and Williamson counties for a hail peril
- **When** a second declaration is submitted for the same peril, dates, and counties
- **Then** the duplicate declaration is rejected
- **And** the submitter is directed to amend the existing event instead

## Event window bounds which losses attach @v1 [published]

- **Given** a declared CAT event with a loss window of June 3 08:00 through June 5 23:59 Central
- **When** a claim with a loss date of June 6 is reported from an affected ZIP code
- **Then** the claim is not auto-tagged to the event
- **And** the adjuster may request a manual attachment with a documented justification

## Extending the loss window reattaches claims @v1 [proposed]

- **Given** a declared CAT event whose window is extended by 36 hours
- **When** the extension is approved
- **Then** previously untagged claims inside the new window are attached to the event
- **And** each reattached claim's deductible basis is recalculated (apply-catastrophe-deductible.feature.md)

## Named storm crossing the loss threshold is declared @v1 [published]

- **Given** 240 first notices of loss reported within 72 hours across four coastal counties
- **And** a modeled gross incurred estimate of $14,000,000
- **When** the CAT committee reviews the event
- **Then** a catastrophe event is declared with a CAT code, a peril of Hurricane, and an affected-county list
- **And** all qualifying open and future claims are auto-tagged to the event

## Two perils in one weather system are coded separately @v1 [published]

- **Given** a coastal storm producing both wind losses and storm-surge flood losses
- **When** the event is declared
- **Then** separate CAT codes are issued for the wind and flood perils
- **And** each claim is coded by its proximate cause rather than by the storm name
