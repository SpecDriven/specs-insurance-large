# Report Loss Experience

Statistical reporting of premium and loss detail to the statistical agent
and to individual states. Records are edited against the statistical plan
before transmission; rejected records must be corrected and resubmitted.

## Catastrophe serial number on hail claims @v1 [proposed]

- **Given** claims from the June 14 Denver hail event
- **When** the statistical records are built
- **Then** each record carries the assigned catastrophe serial number
- **And** records missing the serial number are rejected before transmission

## Invalid class code is rejected on edit @v1 [published]

- **Given** a premium record carrying a class code retired from the statistical plan
- **When** the pre-transmission edit runs
- **Then** the record is rejected with the failing edit identified
- **And** the record is held in the correction queue rather than transmitted

## Loss run for an individual insured @v1 [proposed]

- **Given** a commercial insured requesting a five-year loss run
- **When** the loss run is produced
- **Then** paid losses, case reserves, and allocated loss adjustment expense are shown by claim
- **And** claims under litigation are shown with amounts suppressed and marked as such

## Monthly statistical transmission is accepted @v1 [published]

- **Given** 214,800 premium and loss records for the September accounting month
- **When** the statistical extract is transmitted to the statistical agent
- **Then** the agent returns an acceptance with a control total matching the extract
- **And** the transmission is recorded against the September reporting period

## Rejection rate over tolerance halts the file @v1 [published]

- **Given** an extract of 214,800 records with a rejection tolerance of 0.5%
- **When** 1,930 records fail the edits
- **Then** the whole file is held and nothing is transmitted
- **And** the statistical reporting manager is notified with the top five failing edits by volume

## Reopened claim restates the prior period @v1 [proposed]

- **Given** a claim closed and reported in a prior accounting month
- **When** the claim is reopened and paid a further $12,400
- **Then** a correction record is reported in the current month referencing the original transaction
- **And** the prior period transmission is left unaltered
