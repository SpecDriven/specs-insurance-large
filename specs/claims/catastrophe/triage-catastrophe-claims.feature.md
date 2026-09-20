# Triage Catastrophe Claims

Sorting the claim surge from a declared event into handling lanes so that
severe and life-safety losses are inspected first.

[Jira:INS-902](https://jira.com/INS-902)

## Address outside the event footprint is untagged @v1 [proposed]

- **Given** a claim tagged to the CAT event by ZIP code
- **When** geocoding places the risk address 40 miles outside the affected-county boundary
- **Then** the CAT tag is removed and the claim returns to normal handling
- **And** the untagging is noted in the event's exception log

## Aerial imagery reclassifies a self-reported minor claim @v1 [proposed]

- **Given** a claim self-reported as minor
- **When** post-event aerial imagery for the risk address shows more than 40% roof covering loss
- **Then** the claim is reclassified into the severity 2 lane
- **And** the insured is notified that an adjuster will inspect in person

## Commercial claims are split from personal lines @v1 [proposed]

- **Given** a CAT event affecting both homeowners and commercial property risks
- **When** triage runs
- **Then** commercial claims are routed to the large-loss unit regardless of reported severity
- **And** a business interruption exposure is opened alongside the property exposure

## Low-severity roof claims route to virtual inspection @v1 [published]

- **Given** a CAT claim reporting missing shingles with no interior water intrusion
- **When** triage runs
- **Then** the claim is routed to the virtual inspection lane with a self-service photo link
- **And** no field adjuster is assigned unless the photos show structural damage

## Total loss and habitability drive the top lane @v1 [published]

- **Given** a CAT claim reporting structural collapse and an uninhabitable dwelling
- **When** triage runs on the first notice of loss
- **Then** the claim is placed in the severity 1 lane
- **And** a field inspection is scheduled within 48 hours
- **And** an ALE advance offer is queued (issue-advance-payment.feature.md)

## Vulnerable insureds are prioritized within a lane @v1 [published]

- **Given** two severity 2 claims reported in the same hour
- **And** one insured is flagged as over 75 and living alone
- **When** the inspection queue is ordered
- **Then** the flagged claim is placed ahead of the other within the same lane
