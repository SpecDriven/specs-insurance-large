# Reconcile Financial Totals

Daily and monthly reconciliation between the policy and claim subledgers,
the cash accounts, and the general ledger. An unexplained variance stops the
accounting close until it is identified or formally accepted.

## Daily cash reconciles to the billing subledger @v1 [published]

- **Given** $1,284,610 posted to the billing subledger for the business day
- **When** the bank deposit file is matched against it
- **Then** the two totals agree and the day is marked reconciled
- **And** the reconciliation is signed by the treasury analyst

## Reopening a closed month requires approval @v1 [proposed]

- **Given** a month already closed and reconciled
- **When** an analyst requests it be reopened for a correcting entry
- **Then** the request requires the controller's approval
- **And** every reconciliation for that month is reset to unsigned once it is reopened

## Small variance may be accepted within tolerance @v1 [published]

- **Given** a residual variance of $12 after every item is investigated
- **When** the controller accepts it under the $50 immaterial tolerance
- **Then** the close proceeds
- **And** the acceptance, the amount, and the accepting officer are recorded

## Timing difference is identified and carried @v1 [proposed]

- **Given** a claim payment issued at 4:52 PM on the last business day of the month
- **When** the bank file for that day excludes it
- **Then** the item is classified as a timing difference and carried to the next day
- **And** an item still open as a timing difference after 5 business days is reclassified as an exception

## Unearned premium reserve ties to the in-force book @v1 [proposed]

- **Given** a month-end unearned premium reserve balance on the general ledger
- **When** it is recalculated pro-rata from the in-force policy term dates
- **Then** the two figures must agree within 0.05% of the reserve
- **And** a wider gap is investigated by policy line before the close proceeds

## Unexplained variance blocks the close @v1 [published]

- **Given** a month-end claim subledger total of $9,411,200 and a general ledger balance of $9,409,850
- **When** the close checklist is evaluated
- **Then** the close is blocked with a $1,350 unexplained variance
- **And** the variance must be identified or accepted with a written explanation
