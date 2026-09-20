# Restrict Writing by Territory

Territory-level controls layered on top of the published appetite
(define-underwriting-appetite.feature.md): closed territories, limited
agency appointments, and rate-adequacy holds.

## Address falls on a territory boundary @v1 [proposed]

- **Given** a geocode result that places the risk within 100 feet of the line between territory 214 and 215
- **When** the territory is assigned
- **Then** the assignment follows the postal ZIP plus four mapping, not the raw geocode
- **And** the assignment method is recorded to support later rate audits

## Agent writes outside their appointed territory @v1 [proposed]

- **Given** an agency appointed only for the southern region
- **When** it submits a risk located in the northern region
- **Then** the submission is rejected for lack of territorial appointment
- **And** the agency is given the contact for an appointment expansion request

## Limited writings quota per agency @v1 [published]

- **Given** an agency with a monthly quota of 25 new policies in territory 308
- **When** the agency submits its 26th policy in the same month
- **Then** the submission is held until the quota resets on the first of the month
- **And** the agency principal receives a quota notice

## Renewals continue in a closed territory @v1 [published]

- **Given** an in-force auto policy garaged in a closed territory
- **When** the renewal is processed
- **Then** the policy renews at the filed rate without appetite interference
- **And** the renewal is tagged for the territory performance report

## Territory closed to new personal auto business @v1 [published]

- **Given** territory 214 closed to new personal auto business for rate inadequacy
- **When** a submission garaged in territory 214 is screened
- **Then** the submission is declined with reason "territory closed to new business"
- **And** the agent is shown the closure effective date

## Territory reopened after a rate filing is approved @v1 [published]

- **Given** a closed territory awaiting a 12.4% rate filing
- **When** the department of insurance approves the filing effective March 1
- **Then** the territory reopens for new business on the filing's effective date
- **And** held submissions are released for requoting at the approved rate
