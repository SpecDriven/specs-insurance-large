# Manage Medical Records Request

Obtaining treatment records and billing from providers so a bodily injury
exposure can be evaluated (evaluate-general-damages.feature.md).

## Authorization drives the first records order @v1 [published]

- **Given** a represented claimant whose counsel returns a signed HIPAA authorization
- **When** the adjuster orders records from the three disclosed providers
- **Then** a records request is issued to each provider with the authorization attached
- **And** a 30-day follow-up diary is set per provider

## Expired authorization blocks production @v1 [published]

- **Given** a HIPAA authorization dated more than 12 months before the request
- **When** the provider rejects the order as expired
- **Then** the request is closed as unfulfilled
- **And** a refreshed authorization is requested from claimant's counsel

## Partial production triggers a targeted supplemental request @v1 [proposed]

- **Given** a production containing office notes but no imaging reports or itemized billing
- **When** the records are indexed into the file
- **Then** a supplemental request limited to imaging and UB-04 billing is issued
- **And** the received pages are still routed to the nurse reviewer

## Provider fails to respond within the service level @v1 [published]

- **Given** a records order placed 31 days ago with Midtown Orthopedics
- **When** the follow-up diary matures with no production
- **Then** a second request is sent by certified mail
- **And** the exposure's evaluation target date is pushed out by 30 days

## Psychotherapy notes are withheld from the file @v1 [published]

- **Given** a production that includes separately maintained psychotherapy notes
- **When** the documents are indexed
- **Then** the psychotherapy notes are quarantined and not placed in the general claim file
- **And** access is restricted to the SIU and coverage roles only

## Records cost exceeds the LAE threshold @v1 [proposed]

- **Given** a copy-service invoice of $940 for a single hospital production
- **When** the invoice is submitted for payment
- **Then** the invoice is held for supervisor approval because it exceeds the $500 per-provider LAE threshold
