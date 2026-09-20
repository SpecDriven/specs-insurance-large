# Define Underwriting Appetite

The published statement of what the company will write: lines, class
codes, construction types, limits, and the states in which each applies
(restrict-by-territory.feature.md).

**Assigned:** Priya Raman

## Appetite change does not disturb in-force policies @v1 [proposed]

- **Given** an in-force book containing 1,240 policies on log-home construction
- **When** log homes are removed from appetite
- **Then** in-force policies continue to their expiration
- **And** each is flagged for a non-renewal decision at its anniversary

## Appetite entry drafted without an approver @v1 [proposed]

- **Given** an appetite entry saved in draft by a product analyst
- **When** publication is attempted without a chief underwriter approval
- **Then** publication is blocked
- **And** the entry remains in draft and visible only to the product team

## Appetite entry published with an effective date @v1 [published]

- **Given** a draft appetite entry for frame dwellings in Colorado with a $1,500,000 maximum
- **When** the chief underwriter publishes the entry effective October 1
- **Then** submissions on or after October 1 are screened against the new entry
- **And** submissions quoted before that date retain the prior appetite

## Conflicting appetite entries for the same class @v1 [proposed]

- **Given** a countrywide entry permitting a class and a state entry excluding it
- **When** a submission in that state is screened
- **Then** the more restrictive state entry governs
- **And** the resolution rule applied is recorded with the screening result

## In-appetite risk with an out-of-appetite feature @v1 [published]

- **Given** an otherwise in-appetite dwelling with a wood-burning stove as the sole heat source
- **When** appetite is evaluated
- **Then** the submission is referred rather than declined
- **And** the specific out-of-appetite feature is named on the referral

## Risk outside appetite is declined at screening @v1 [published]

- **Given** a published appetite excluding dwellings with fuel oil tanks below grade
- **When** a submission discloses a buried oil tank
- **Then** the submission is declined with reason "outside published appetite"
