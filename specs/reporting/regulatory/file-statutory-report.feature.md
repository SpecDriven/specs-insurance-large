# File a Statutory Report

Periodic filings owed to state departments of insurance and the NAIC:
the quarterly statement, the annual statement with its schedules, and state
supplements. Filings are locked and versioned once submitted.

## Amended filing supersedes the original @v1 [proposed]

- **Given** an annual statement submitted to Nevada on February 25
- **When** a reserve restatement requires an amendment
- **Then** an amended filing is created that references the original submission identifier
- **And** the original remains retrievable and is marked superseded

## Late filing raises a compliance event @v1 [published]

- **Given** a state filing due March 1
- **When** March 2 begins and no submission is recorded
- **Then** a compliance event is opened with the state, the filing, and the days late
- **And** the chief compliance officer is notified the same morning

## Out-of-balance blocks submission @v1 [published]

- **Given** an assembled annual statement whose Schedule P total differs from Page 3 by $18,400
- **When** the filing analyst attempts to submit
- **Then** submission is blocked with the failing cross-check named
- **And** the variance must be cleared or explained in a footnote before the block lifts

## Quarterly statement assembled from the closed ledger @v1 [published]

- **Given** a general ledger closed for the quarter ended June 30
- **When** the statutory reporting job assembles the quarterly statement
- **Then** Pages 2 through 4 and the underwriting and investment exhibit are produced
- **And** the statement is balanced to the closed trial balance to the dollar

## Sign-off requires two officers @v1 [proposed]

- **Given** an assembled annual statement that passes every cross-check
- **When** only the chief financial officer has signed
- **Then** the filing remains in ready-to-file status
- **And** submission opens once the appointed actuary's opinion is also attached and signed

## Zero-premium state still files a nil return @v1 [proposed]

- **Given** a state where Acme is licensed but wrote no premium in the year
- **When** the annual filing calendar runs
- **Then** a nil return is produced and filed
- **And** the calendar records the state as satisfied rather than not applicable
