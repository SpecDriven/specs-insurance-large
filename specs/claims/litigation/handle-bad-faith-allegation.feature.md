# Handle Bad Faith Allegation

Response to an allegation that the carrier failed to settle, delayed, or
mishandled a claim, including statutory demand letters and DOI complaints.

## Cure within the statutory window @v1 [published]

- **Given** a civil remedy notice alleging failure to tender the $100,000 per-person limit
- **When** the limit is tendered on day 41 of the cure period
- **Then** the tender and its date are documented as a cure
- **And** the claimant's counsel receives written confirmation before the window closes

## DOI complaint requires a written response @v1 [published]

- **Given** a Department of Insurance complaint alleging a 90-day delay in payment
- **When** the complaint is routed to the regulatory unit
- **Then** a written response with a claim chronology is prepared within the state's 15-day requirement
- **And** the complaint outcome is recorded in the market conduct log

## File is preserved on notice of a bad faith claim @v1 [proposed]

- **Given** a bad faith allegation received on the file
- **When** the allegation is logged
- **Then** a litigation hold is applied to the claim file, diary notes, and adjuster communications
- **And** routine record destruction schedules are suspended for the file

## Privileged coverage analysis is segregated @v1 [proposed]

- **Given** a coverage opinion prepared by outside counsel on a file now facing a bad faith claim
- **When** the claim file is produced in discovery
- **Then** the coverage opinion is logged on a privilege log rather than produced
- **And** claim handling notes are produced without redaction of routine adjusting activity

## Root cause review after an adverse outcome @v1 [proposed]

- **Given** a bad faith matter resolved with a payment above the policy limits
- **When** the matter closes
- **Then** a root cause review is performed covering reserve accuracy, response times, and authority escalation
- **And** the findings are reported to the claims quality committee within 45 days

## Statutory bad faith demand starts a response clock @v1 [published]

- **Given** a civil remedy notice served under a state's unfair claim practices statute
- **When** the notice is logged
- **Then** a 60-day cure period is calendared from the filing date
- **And** coverage counsel and the claims director are notified within one business day
