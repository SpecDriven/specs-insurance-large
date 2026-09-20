# Version a Policy Form

Forms are versioned by edition date. A new edition never changes what an
in-force policy promises; it takes effect prospectively and, where it
reduces coverage, triggers a notice to the insured.

[Jira:CLM-1190](https://jira.com/CLM-1190)

## Coverage-reducing edition requires advance notice @v1 [published]

- **Given** a new edition that narrows water backup coverage at renewal
- **When** renewal offers are prepared for affected policies
- **Then** a notice of coverage change accompanies the offer at least 45 days before expiration
- **And** the notice names the form and summarises what changed

## Edition applies from its approved effective date @v1 [proposed]

- **Given** form HO 00 03 05 26 approved effective 1 September 2026
- **When** a homeowners policy is quoted with an effective date of 15 September 2026
- **Then** the 05 26 edition is used
- **And** a policy effective 20 August 2026 still uses the prior edition

## Edition history is retained for claims handling @v1 [published]

- **Given** a claim on a policy that was effective 3 years ago
- **When** the adjuster opens the policy's form set
- **Then** the exact edition in force on the loss date is retrievable with its full text
- **And** later editions of the same form are clearly distinguished

## Editorial correction does not create a new edition @v1 [proposed]

- **Given** a typographical error in the address block of form PA 00 01 04 24
- **When** the forms administrator publishes a corrected file under the same edition date
- **Then** the edition date and filing number are unchanged
- **And** the correction is logged with the administrator's name and date

## New edition is filed before it may be used @v1 [published]

- **Given** a draft edition of form HO 00 03 with edition date 05 26
- **When** the forms administrator releases it for use in Ohio
- **Then** release is blocked until the Ohio filing shows an approved status
- **And** the approved filing number is recorded against the edition

## Withdrawn edition is blocked for new use but honoured in force @v1 [published]

- **Given** edition PA 04 57 01 24 withdrawn on 1 March 2026
- **When** a new policy is assembled after that date
- **Then** the withdrawn edition cannot be attached
- **And** policies already carrying it keep it until their next renewal
