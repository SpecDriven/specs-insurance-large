# Version a Product

A product version pins the form set, rate tables, and rule set that a policy
is written on. Versions are immutable once approved; corrections are made by
issuing a new version, never by editing an approved one.

## Approval requires a complete form set @v1 [proposed]

- **Given** a draft version that adds an optional rental reimbursement coverage
- **When** the product manager submits the version for approval without form AA-2210
- **Then** approval is refused with the missing form listed
- **And** the draft remains editable

## Approved version is immutable @v1 [published]

- **Given** an approved product version 2026.1
- **When** a product manager attempts to change its collision deductible options
- **Then** the change is refused
- **And** the manager is offered the option to draft a successor version instead

## Deprecating a version blocks new business only @v1 [proposed]

- **Given** version 2025.4 with 6,300 policies still in force
- **When** the product manager deprecates the version
- **Then** new business quotes may no longer select it (policy/auto-policy/quote-policy.feature.md)
- **And** in-force policies continue to renew on it until a migration is scheduled

## Draft a new version from the approved predecessor @v1 [published]

- **Given** personal auto version 2026.1 approved for Colorado
- **When** a product manager drafts version 2026.2 from it
- **Then** the draft inherits the form set, rate tables, and rule set of 2026.1
- **And** the draft is editable while every element of 2026.2 is marked derived until changed

## Effective dating splits the book @v1 [published]

- **Given** version 2026.2 with an effective date of September 1
- **When** a policy is quoted with an effective date of August 28
- **Then** the quote is rated on version 2026.1
- **And** a policy quoted for September 3 is rated on version 2026.2

## Version compare exhibit for governance review @v1 [proposed]

- **Given** draft version 2026.2 and approved version 2026.1
- **When** the product manager requests a comparison for the governance committee
- **Then** every added, removed, and changed form, rate factor, and rule is listed with its old and new value
- **And** the exhibit is attached to the approval record
