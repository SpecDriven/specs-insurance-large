# Track Filing Approval Status

Once transmitted, a filing moves through objection letters, responses, and a
final disposition. Status is polled from SERFF and mirrored onto the internal
filing record (submit-rate-filing.feature.md).

## Approved with modification requires a revised rate page @v1 [published]

- **Given** a filing approved at +4.0% against a requested +6.4%
- **When** the disposition is received
- **Then** the approved indication is stored as +4.0%
- **And** a revised rate page is required before the filing can be marked implemented

## Deemer date approaches without disposition @v1 [proposed]

- **Given** a prior-approval filing submitted 52 days ago in a state with a 60-day deemer
- **When** the nightly status sweep runs
- **Then** a deemer alert is raised to the compliance manager
- **And** the filing is marked eligible for deemed approval on day 61 absent action

## Disapproval records the stated grounds @v1 [published]

- **Given** a pending homeowners rate filing in New York
- **When** the Department issues a disapproval citing excessive expense provision
- **Then** the filing disposition is recorded as "disapproved"
- **And** the stated grounds are stored verbatim on the filing record
- **And** no implementation task is created

## Objection letter opens a response clock @v1 [published]

- **Given** a pending Ohio personal auto filing
- **When** the Department issues an objection letter requesting credibility support
- **Then** the filing moves to "objection pending"
- **And** a response due date is set 20 calendar days out
- **And** the assigned actuary is notified

## Response to objection returns the filing to review @v1 [published]

- **Given** a filing in "objection pending" with an unanswered objection
- **When** the actuary uploads a response with revised exhibits
- **Then** the response is transmitted through SERFF
- **And** the filing status returns to "pending review"

## Stale filings are escalated @v1 [proposed]

Filings that sit untouched are chased on a fixed cadence rather than by
individual reminders.

* Any filing with no SERFF activity for 30 days appears on the weekly
  compliance aging report.
* At 60 days the state filing contact is emailed directly.
* At 90 days the filing is escalated to the Chief Compliance Officer.
