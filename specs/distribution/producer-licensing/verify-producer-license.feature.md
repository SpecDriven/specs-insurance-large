# Verify Producer License

Every individual producer writing Acme business must hold an active
license with the right lines of authority in the state of the risk.
Verification runs against the NIPR producer database nightly and on demand.

## Appointment and license must both be active @v1 [proposed]

- **Given** a producer holding an active Illinois license
- **And** no active Acme appointment in Illinois
- **When** the producer attempts to quote an Illinois homeowners risk
- **Then** the quote is not permitted
- **And** the deficiency is reported as a missing appointment, not a missing license

## Missing line of authority blocks a commercial submission @v1 [proposed]

- **Given** a producer licensed for personal lines only in Indiana
- **When** the producer submits a commercial general liability application
- **Then** the submission is blocked (block-unlicensed-production.feature.md)
- **And** the missing property and casualty line of authority is named in the message

## Name mismatch is routed for manual reconciliation @v1 [published]

- **Given** a producer recorded as "R. Alvarez" in the agency record
- **And** the registry returns "Roberto Alvarez-Mendez" for the same national producer number
- **When** the nightly verification runs
- **Then** the record is flagged for manual reconciliation rather than failed
- **And** production continues for 30 days while the mismatch is resolved

## Non-resident license is required for out-of-state risks @v1 [published]

- **Given** a producer resident in Ohio submitting a risk garaged in Kentucky
- **When** the licensing check runs on the state of the risk
- **Then** an active Kentucky non-resident license is required
- **And** the Ohio resident license alone is not sufficient

## Producer license verified against the national registry @v1 [published]

- **Given** a producer with national producer number 8841207
- **When** the licensing service queries the national registry
- **Then** the producer's Ohio property and casualty license is confirmed active
- **And** the verification result is stamped with the query date

## Registry outage falls back to the last good verification @v1 [proposed]

- **Given** the national registry is unreachable
- **And** the producer was verified active 6 days ago
- **When** a submission is attempted
- **Then** the submission proceeds under the cached verification
- **And** a cached verification older than 14 days is treated as unverified

## Suspended license halts binding the same day @v1 [published]

- **Given** a producer whose Tennessee license is suspended by the DOI on 14 May 2026
- **When** the suspension appears in the nightly registry feed
- **Then** the producer's binding authority is revoked effective 14 May 2026
- **And** the producer's agency principal is notified by email
