# Record Wind Damage Claim

**Assigned:** Dana Whitfield

Wind and hail losses to the dwelling and other structures, including the
separate windstorm deductible that applies in coastal territories.

## Catastrophe event surge staffing @v1 [proposed]

- **Given** a declared catastrophe with more than 400 claims opened in 48 hours
- **When** the claim is assigned
- **Then** the file is routed to the catastrophe adjuster pool with a CAT code of ALWIND26
- **And** the first contact standard is extended from 24 to 72 hours with notice to the insured

## Cosmetic hail marks on a metal roof @v1 [published]

- **Given** a policy carrying the cosmetic damage exclusion endorsement for metal roof surfaces
- **When** the inspection finds denting with no loss of water-shedding function
- **Then** the roof damage is excluded as cosmetic
- **And** covered wind damage to the gutters and fascia is adjusted separately

## Deductible exceeds the loss on a minor claim @v1 [published]

- **Given** a $2,500 windstorm deductible and a repair estimate of $1,870
- **When** the estimate is finalized
- **Then** the claim is closed without payment as below the deductible
- **And** the insured is told the loss will still appear on the CLUE loss history report

## Roof over twenty years is settled on actual cash value @v1 [published]

- **Given** a roof installed in 2001 on a policy with the roof surfacing payment schedule endorsement
- **When** the wind loss to the roof is adjusted
- **Then** the roof is settled at 40% of replacement cost per the age schedule
- **And** the schedule used is attached to the settlement letter

| roof age at loss | ACV percentage of replacement cost |
| ---------------- | ---------------------------------- |
| 0–9 years        | 100%                               |
| 10–14 years      | 70%                                |
| 15–19 years      | 55%                                |
| 20+ years        | 40%                                |

## Shingles lost in a named storm @v1 [published]

- **Given** an in-force HO-3 policy on a dwelling in Mobile County, Alabama
- **When** the insured reports 30 missing shingles after a named tropical storm
- **Then** a claim is opened under the windstorm peril
- **And** the 2% named-storm deductible is applied against Coverage A rather than the flat $1,000 deductible
- **And** an emergency tarp is authorized (claims/property-claims/manage-emergency-mitigation.feature.md)

## Tree falls on a detached garage @v1 [proposed]

- **Given** a windstorm that brings a neighbor's oak down onto the insured's detached garage
- **When** the claim is adjusted
- **Then** the garage is paid under Coverage B other structures at 10% of Coverage A
- **And** debris removal of the fallen tree is allowed up to the $1,000 sublimit

## Wind-driven rain through a pre-existing opening @v1 [proposed]

- **Given** interior water staining beneath a roof vent with no storm-created opening
- **When** the adjuster completes the cause-of-loss investigation
- **Then** the interior damage is denied under the wind-driven rain limitation
- **And** the insured is advised of the appraisal and complaint options
