# View Book of Business

The portal gives an agency a live view of its in-force premium, loss
experience, and pending renewals. What a user sees is scoped by the
access granted to them (manage-portal-user-access.feature.md).

## Agency principal sees the whole agency book @v1 [published]

- **Given** an agency principal signed in to the portal
- **When** the principal opens the book of business view
- **Then** in-force policy count and written premium are shown for every producer at the agency
- **And** figures are shown as of the previous night's close

## Export of the book is limited and logged @v1 [published]

- **Given** a producer requesting a comma-separated export of the book
- **When** the export is generated
- **Then** the file omits full policyholder account numbers and dates of birth
- **And** the export request is written to the audit log with the requesting user and timestamp

## Loss ratio is reported on an earned premium basis @v1 [published]

- **Given** an agency with $2,100,000 earned premium and $987,000 incurred loss including loss adjustment expense
- **When** the loss ratio panel is displayed
- **Then** a 47% loss ratio is shown for the trailing twelve months
- **And** claims with open reserves are included at their current reserve value

## Producer sees only their own policies @v1 [proposed]

- **Given** a producer without agency-wide access
- **When** the producer opens the book of business view
- **Then** only policies where that producer is the producer of record are listed
- **And** agency totals are hidden

## Renewal pipeline highlights policies inside 60 days @v1 [published]

- **Given** an agency with 214 policies renewing in the next quarter
- **When** the producer filters to the renewal pipeline
- **Then** policies with an expiration date within 60 days are listed first
- **And** any policy carrying a non-renewal notice is marked (policy/auto-policy/renew-policy.feature.md)

## Terminated agency retains read-only visibility @v1 [proposed]

- **Given** an agency terminated without cause 45 days ago
- **When** the former principal signs in
- **Then** the in-force book is visible in read-only form until the roll completes
- **And** no quoting or endorsement actions are available
