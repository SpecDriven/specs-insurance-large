# Endorse Commercial Auto Policy

Mid-term changes to a bound commercial auto policy. Each endorsement
produces a revised declarations page and a pro-rata premium adjustment.

## Add drive other car coverage for an executive @v1 [published]

- **Given** a named insured whose president has no personal auto policy
- **When** the agent adds the drive other car endorsement for that individual
- **Then** liability, medical payments, and uninsured motorists coverage extend to the executive
- **And** the executive is listed by name on the declarations page

## Backdated endorsement beyond 15 days is refused @v1 [published]

- **Given** today is September 20, 2026
- **When** the agent submits an endorsement with an effective date of August 4, 2026
- **Then** the endorsement is refused
- **And** the agent is offered the earliest permitted date of September 5, 2026

## Endorsement conflicting with an open claim is held @v1 [proposed]

- **Given** an open claim on a scheduled unit with a reserve of $84,000
- **When** the agent requests deletion of physical damage coverage on that unit
- **Then** the endorsement is held for underwriter approval
- **And** the claim number is attached to the referral

## Increase liability limit mid-term @v1 [published]

- **Given** a policy with a $500,000 combined single limit effective January 1
- **When** the insured requests $1,000,000 effective July 1
- **Then** an endorsement is issued raising the limit on all scheduled units
- **And** additional premium is charged pro-rata for the remaining six months

## Premium change under $25 is waived @v1 [published]

- **Given** an endorsement producing an additional premium of $18
- **When** the endorsement is processed
- **Then** the premium change is waived as immaterial
- **And** the declarations page is reissued at no charge

## Remove a driver after a license suspension @v1 [proposed]

- **Given** a listed driver whose CDL was suspended on May 2
- **When** the insured excludes the driver by endorsement
- **Then** the driver exclusion form is generated for signature
- **And** the exclusion takes effect only after the signed form is received
