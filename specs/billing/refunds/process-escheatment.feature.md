# Process Unclaimed Refund Escheatment

Reports and remits abandoned return premium to the state treasurer once
the statutory dormancy period runs, after documented due diligence.

## Dormancy period runs from the last owner contact @v1 [published]

- **Given** a $756 refund credit with no owner-generated activity for 3 years
- **And** the governing state dormancy period for insurance proceeds is 3 years
- **When** the annual escheatment review runs
- **Then** the item is identified as presumptively abandoned
- **And** the dormancy start date is recorded as the date of last owner contact

## Due diligence letter precedes any remittance @v1 [published]

- **Given** an item identified as presumptively abandoned with a balance over $50
- **When** the escheatment cycle begins
- **Then** a due diligence letter is mailed to the last known address at least 60 days before the report deadline
- **And** the mailing date and address are retained for the state examination file

## Jurisdiction follows the last known address @v1 [published]

- **Given** an unclaimed refund for an insured whose last known address is in Ohio
- **And** the carrier is domiciled in Illinois
- **When** the report is assembled
- **Then** the item is reported to Ohio under its unclaimed property statute
- **And** items with no known address are reported to the state of domicile

## Late report triggers an interest accrual @v1 [proposed]

- **Given** an escheatment report filed 45 days after the November 1 deadline
- **When** the state assesses the filing
- **Then** interest accrues on the remitted amount from the original due date
- **And** the penalty and interest are booked to regulatory expense

## Owner response removes the item from the report @v1 [proposed]

- **Given** an item on the draft escheatment report
- **When** the owner responds to the due diligence letter and claims the funds
- **Then** the item is removed from the report and the refund is reissued
- **And** the dormancy clock is reset from the date of contact
