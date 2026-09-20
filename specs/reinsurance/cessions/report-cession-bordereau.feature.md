# Report a Cession Bordereau

A bordereau is the periodic schedule of ceded premium and losses reported to
each reinsurer (cede-premium-to-treaty.feature.md). Reporting deadlines are
set in the treaty wording.

## Bordereau must tie to the ledger before transmission @v1 [published]

- **Given** a draft bordereau totalling $4,179,200 against a ledger balance of $4,180,000
- **When** the reconciliation control runs
- **Then** transmission is blocked on the $800 variance
- **And** the variance is itemized by policy for investigation

## Broker receives the bordereau for brokered treaties @v1 [proposed]

- **Given** a treaty placed through an intermediary with five participating reinsurers
- **When** the bordereau is transmitted
- **Then** the single file is sent to the broker of record
- **And** individual reinsurer shares are shown as a signed-line breakdown within the file

## Late bordereau triggers a contractual notice @v1 [proposed]

- **Given** a bordereau 12 days past its contractual due date
- **When** the deadline monitor runs
- **Then** the reinsurer is notified of the delay with a revised delivery date
- **And** the delay is recorded for the annual treaty relationship review

## Loss bordereau lists paid and outstanding separately @v1 [published]

- **Given** a reporting period with $1,840,000 ceded paid losses and $6,200,000 ceded outstanding
- **When** the loss bordereau is produced
- **Then** paid, outstanding, and allocated loss adjustment expense are reported in separate columns
- **And** each row carries the claim reference and date of loss

## Premium bordereau is produced within the contractual deadline @v1 [published]

- **Given** a treaty requiring the premium bordereau within 45 days of quarter end
- **When** the quarter closes 2026-06-30
- **Then** the bordereau is produced and transmitted no later than 2026-08-14
- **And** the file is issued in the reinsurer's agreed layout

## Restated prior period is reported as an adjustment @v1 [proposed]

- **Given** a prior-quarter cession corrected by $52,000 after the bordereau was issued
- **When** the current bordereau is produced
- **Then** the correction appears as a dated adjustment row referencing the original period
- **And** prior bordereaux are not reissued
