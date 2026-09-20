# Reissue Declarations After Endorsement

Any endorsement that changes coverage, premium, or a named party produces
a replacement declarations page showing the policy as amended from the
endorsement's effective date.

## Adding a vehicle mid-term reissues the declarations @v1 [published]

- **Given** an in-force auto policy with two vehicles
- **When** a third vehicle is added effective 12 August 2026
- **Then** amended declarations are issued showing all three vehicles
- **And** the amended declarations state the endorsement effective date and the pro-rata additional premium

## Backdated endorsement reissues from the earlier date @v1 [published]

- **Given** an endorsement processed on 20 September 2026 with an effective date of 1 September 2026
- **When** the amended declarations are generated
- **Then** the coverage shown is effective 1 September 2026
- **And** the return or additional premium is computed pro rata from that date

## Lienholder copy follows a coverage reduction @v1 [published]

- **Given** an endorsement raising the collision deductible from $500 to $1,000
- **When** amended declarations are issued
- **Then** the lienholder receives a copy along with the named insured
- **And** the lienholder copy is mailed within 3 business days of the endorsement

## Premium-bearing and non-premium changes are distinguished @v1 [proposed]

- **Given** an endorsement changing only the insured's mailing address
- **When** the endorsement is processed
- **Then** amended declarations are issued with no change in premium
- **And** the amended declarations show "no premium change" rather than a zero-dollar adjustment

## Rescinded endorsement restores the prior declarations @v1 [proposed]

- **Given** an endorsement issued in error and rescinded the next day
- **When** the rescission is processed
- **Then** declarations are reissued matching the coverage in force before the endorsement
- **And** the erroneous version is marked void in the document history

## Same-day endorsements are consolidated into one reissue @v1 [proposed]

- **Given** three endorsements processed on the same day with the same effective date
- **When** declarations are reissued
- **Then** a single amended declarations page reflects all three changes
- **And** the schedule of forms lists every form added or removed that day
