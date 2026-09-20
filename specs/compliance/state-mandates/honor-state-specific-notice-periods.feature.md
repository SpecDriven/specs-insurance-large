# Honor State-Specific Notice Periods

Advance notice requirements for cancellation, non-renewal, and premium
increases differ by state and by reason. The notice engine computes the
mailing date from the intended effective date.

## Late mailing invalidates the notice @v1 [proposed]

- **Given** a cancellation notice whose required mailing date has already passed
- **When** the batch print job runs
- **Then** the notice is suppressed
- **And** the cancellation effective date is pushed out to preserve the full statutory period
- **And** a compliance exception is logged (compliance/audit/maintain-audit-trail.feature.md)

## Non-payment notice uses the shorter statutory period @v1 [published]

- **Given** an Illinois personal auto policy to be cancelled for non-payment on 2026-03-20
- **And** Illinois requires 10 days notice for non-payment
- **When** the notice is generated
- **Then** the notice must be mailed no later than 2026-03-10
- **And** the notice states the amount required to avoid cancellation

## Non-renewal notice period is measured from expiration @v1 [published]

- **Given** a New York homeowners policy expiring 2026-09-01
- **And** New York requires between 45 and 60 days advance non-renewal notice
- **When** non-renewal is elected
- **Then** the notice window opens 2026-07-03 and closes 2026-07-18
- **And** an election made after 2026-07-18 forces a conditional renewal instead

## Premium increase above the threshold triggers advance notice @v1 [proposed]

- **Given** a New Jersey renewal with a premium increase of 12%
- **And** New Jersey requires 30 days notice for increases above 10%
- **When** the renewal offer is prepared
- **Then** the renewal must be mailed at least 30 days before expiration
- **And** the notice itemizes the reason for the increase

## Proof of mailing is captured for every statutory notice @v1 [published]

- **Given** a batch of 340 statutory notices handed to the print vendor
- **When** the vendor confirms the USPS induction
- **Then** a certificate of mailing is stored against each policy
- **And** the postmark date becomes the official notice date

## Underwriting cancellation uses the longer period @v1 [published]

- **Given** the same policy to be cancelled for a permitted underwriting reason
- **And** Illinois requires 30 days notice for reasons other than non-payment
- **When** the notice is generated
- **Then** the mailing date is set 30 days before the cancellation date
