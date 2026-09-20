# Manage Letter Templates

Templates hold the standing text of correspondence, with merge fields for
policy data and state-specific blocks for statutory language. Compliance
owns approval; operations owns publication.

## Published template applies only to letters generated afterwards @v1 [proposed]

- **Given** a template revision published 15 July 2026
- **When** a letter generated on 14 July 2026 is reprinted on 20 July 2026
- **Then** the reprint uses the template version in force when the letter was generated
- **And** letters generated on or after 15 July use the new version

## Retiring a template requires a successor @v1 [proposed]

- **Given** a template still referenced by an active correspondence rule
- **When** an author attempts to retire it
- **Then** retirement is refused until a successor template is named
- **And** the referencing rules are listed so they can be repointed

## Statutory language block is locked against editing @v1 [proposed]

- **Given** a template containing the Kentucky DOI complaint notice block
- **When** an author edits the template body
- **Then** the statutory block cannot be altered or removed
- **And** surrounding text may be edited freely

## Template change requires compliance approval before publication @v1 [published]

- **Given** a draft revision to the non-renewal letter template
- **When** the author submits it for publication
- **Then** publication is blocked until a compliance reviewer approves the draft
- **And** the approver and approval date are recorded on the template version

## Template may be piloted in a single state @v1 [published]

- **Given** an approved revision intended for a phased rollout
- **When** the revision is published scoped to Indiana only
- **Then** Indiana letters use the revision and other states keep the prior version
- **And** the scope may be widened without a second compliance approval

## Unresolved merge field fails the proof @v1 [published]

- **Given** a template referencing a merge field for the agency phone number
- **When** a letter is proofed for a policy with no agency phone on record
- **Then** the proof fails rather than printing an empty placeholder
- **And** the failing field name is reported to the author
