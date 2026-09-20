# Reopen a Closed Claim

A closed claim may be reopened when new damage, new bills, or a new party
surfaces. Reopening restores the file and re-establishes a reserve
(claims/property-claims/set-claim-reserve.feature.md).

## New claimant emerges after the file was closed @v1 [published]

- **Given** a closed bodily injury claim settled with the driver only
- **When** a passenger present at the loss submits a demand within the limitation period
- **Then** a new claimant record is opened on the existing claim
- **And** remaining per-occurrence limits are verified before any offer is extended

## Payment reissued on a stale draft @v1 [proposed]

- **Given** a settlement draft issued 9 months ago and never negotiated
- **When** the payee requests reissue
- **Then** the claim is reopened administratively, the stale draft is stopped, and a replacement is issued
- **And** the file is re-closed the same business day with no change to incurred loss

## Reopen after a release has been signed @v1 [proposed]

- **Given** a general release executed by the claimant and consideration paid
- **When** the claimant requests additional payment for the same injury
- **Then** the request is declined on the basis of the executed release
- **And** the signed release is provided with the declination letter

## Reopen blocked by the statute of limitations @v1 [published]

- **Given** a date of loss more than four years old in a state with a three-year tort limitation
- **When** a claimant requests that the file be reopened for additional damages
- **Then** the reopen request is declined as time-barred
- **And** the declination and the limitation period relied upon are documented

## Reopen triggered by a DOI complaint @v1 [proposed]

- **Given** a Department of Insurance complaint alleging a premature closure
- **When** the complaint is received by the regulatory unit
- **Then** the claim is reopened and assigned to a claims manager within one business day
- **And** a written response to the DOI is drafted within the state's 15-day response window

## Supplemental repair discovered after closure @v1 [published]

- **Given** a collision claim closed 40 days ago after a $3,900 repair payment
- **When** the shop submits a supplement for a transmission mount damaged in the same impact
- **Then** the claim is reopened under the original claim number
- **And** a reserve equal to the supplement amount is re-established
- **And** the original adjuster of record is reassigned to the file
