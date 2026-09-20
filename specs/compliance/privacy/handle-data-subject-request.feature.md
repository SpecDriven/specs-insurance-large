# Handle a Data Subject Request

Residents of certain states may request access to, correction of, or deletion
of the personal information Acme holds. Insurance records carry statutory
retention duties that limit what can be deleted.

**Assigned:** Aisha Bello

## Access request returns a portable file within the statutory window @v1 [published]

- **Given** a verified access request from a California resident received 2026-02-03
- **When** the privacy team fulfils the request
- **Then** a machine-readable export of the requester's personal information is produced
- **And** the export is delivered no later than 2026-04-04
- **And** the categories of information and their sources are itemized

## Correction request propagates to downstream consumers @v1 [proposed]

- **Given** a verified correction of a misspelled named insured surname
- **When** the correction is applied
- **Then** the policy record, declarations page, and billing profile are updated
- **And** a correction notice is sent to each consumer reporting agency the data was shared with in the prior 12 months

## Deletion is refused for records under claim retention @v1 [published]

- **Given** a deletion request from an insured with a bodily injury claim closed 18 months ago
- **And** the claim file retention period is 7 years from closure
- **When** the request is evaluated
- **Then** deletion is refused for the claim file
- **And** the statutory retention basis is cited in the response

## Identity verification fails and the request is closed @v1 [published]

- **Given** a deletion request whose requester cannot answer the knowledge-based verification questions
- **When** the second verification attempt fails
- **Then** the request is closed as "unable to verify"
- **And** no personal information is disclosed
- **And** the requester is told how to re-submit with documentary proof

## Opt-out of sale suppresses data sharing @v1 [published]

- **Given** a resident who submits an opt-out of sale or sharing
- **When** the opt-out is recorded
- **Then** the customer is excluded from all affiliate marketing feeds within 15 business days
- **And** the opt-out persists across policy renewals

## Partial deletion removes marketing data only @v1 [proposed]

- **Given** the same requester with marketing preferences and clickstream data outside the retention scope
- **When** the request is fulfilled
- **Then** the marketing and clickstream records are deleted
- **And** the underwriting and claim records are retained
- **And** the response explains which categories were and were not deleted

## Request volume is reported annually @v1 [published]

- **Given** a completed calendar year of data subject requests
- **When** the annual privacy metrics report is generated
- **Then** the count of requests received, complied with, and denied is reported by request type
- **And** the median days to respond is included
