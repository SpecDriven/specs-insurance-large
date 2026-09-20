# Attach Policy Forms

Every policy carries a set of coverage forms, endorsements, and state
amendatory endorsements. Form attachment is driven by line, state,
effective date, and the coverages actually selected.

## Additional insured endorsement names the interest @v1 [published]

- **Given** a homeowners policy with a mortgagee to be added
- **When** the additional interest endorsement is attached
- **Then** the mortgagee's name, address, and loan number print on the form
- **And** the mortgagee is added to the declarations page (../declarations/generate-declarations-page.feature.md)

## Base coverage form attaches by line and state @v1 [published]

- **Given** a personal auto policy effective 1 July 2026 in Ohio
- **When** the form set is assembled
- **Then** form PA 00 01 04 24 attaches as the base policy form
- **And** the Ohio amendatory endorsement PA 01 38 02 23 attaches automatically

## Conflicting endorsements are blocked @v1 [published]

- **Given** a homeowners policy with replacement cost on contents
- **When** an actual cash value contents endorsement is added
- **Then** the attachment is blocked as conflicting
- **And** the user must remove the replacement cost endorsement first

## Form set is frozen at the effective date @v1 [proposed]

- **Given** a policy effective 1 May 2026 built from the April 2026 form library
- **When** a new form edition is published on 1 June 2026
- **Then** the in-force policy keeps its April edition forms
- **And** the new edition applies at the policy's next renewal (version-policy-form.feature.md)

## Mandatory state form cannot be removed @v1 [published]

- **Given** a Michigan personal auto policy carrying the mandatory personal injury protection endorsement
- **When** a user attempts to remove that form from the form set
- **Then** the removal is rejected
- **And** the message identifies the form as state-mandatory

## Selecting a coverage pulls in its endorsement @v1 [proposed]

- **Given** a personal auto policy where the insured adds rental reimbursement
- **When** the coverage is added by endorsement (policy/auto-policy/endorse-policy.feature.md)
- **Then** form PA 04 57 04 24 attaches effective the endorsement date
- **And** the removed coverage's form detaches on the same date

## Unknown form number fails assembly loudly @v1 [proposed]

- **Given** a rating rule that requests form HO 04 90 03 22 which is not in the form library
- **When** the form set is assembled
- **Then** assembly fails rather than silently omitting the form
- **And** the issue is routed to the forms administrator with the requesting rule identified
