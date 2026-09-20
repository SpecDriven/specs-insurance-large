# Track Claim Status Online

Gives the insured a running view of an open claim: its status, the
assigned adjuster, payments issued, and what is still needed
(claims/auto-accidents/record-car-accident.feature.md).

## Claim timeline shows milestones in order @v1 [published]

- **Given** an open collision claim reported 9 days ago
- **When** the insured opens the claim from the portal
- **Then** the timeline shows the report, adjuster assignment, inspection, and estimate milestones with dates
- **And** the next expected milestone is shown with a target date

## Outstanding document request is surfaced prominently @v1 [proposed]

- **Given** an adjuster who has requested a police report from the insured
- **When** the claim status page loads
- **Then** the outstanding request is shown at the top with an upload control
- **And** the claim status reads "waiting on you" rather than "under review"

## Payment detail shows the deductible applied @v1 [published]

- **Given** a settled collision claim with a $4,180 repair estimate and a $1,000 deductible
- **When** the insured views the payment detail
- **Then** the $3,180 payment is shown with the deductible itemized as a separate line
- **And** the payee and the issue date are displayed

## Reserve amounts are never exposed to the insured @v1 [published]

- **Given** a claim carrying a $12,000 case reserve and $1,400 of allocated LAE
- **When** the insured views the claim
- **Then** neither the reserve nor the LAE figures are displayed
- **And** only amounts actually paid to or on behalf of the insured are shown

## Status page notes a pending subrogation recovery @v1 [proposed]

- **Given** a closed claim where Acme is pursuing subrogation against the at-fault party's carrier
- **When** the insured views the claim
- **Then** the claim shows as closed with a note that deductible recovery is being pursued
- **And** the insured is told a recovered deductible is reimbursed within 15 days of receipt

## Third-party claimant sees a restricted view @v1 [proposed]

- **Given** a claimant who is not an insured on the policy
- **When** the claimant accesses the claim with a claim-specific access code
- **Then** only the adjuster contact, the claim number, and the liability determination status are shown
- **And** no policy limits, coverages, or insured personal information are displayed
