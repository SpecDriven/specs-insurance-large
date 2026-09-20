# Write Off a Small Balance

Clears immaterial receivable and credit balances that cost more to pursue
or refund than they are worth, within delegated authority limits.

## Automatic write-off under the materiality threshold @v1 [published]

- **Given** a cancelled policy with $6.40 of earned premium outstanding for 45 days
- **And** the automatic write-off threshold is $10
- **When** the month-end write-off job runs
- **Then** the balance is written off to bad debt expense without manual review
- **And** the account is closed with a zero balance

## Reversal when a written-off balance is later paid @v1 [published]

- **Given** a $6.40 balance written off two months ago
- **When** the insured remits payment for the full amount
- **Then** the write-off is reversed and the payment is posted to the original account
- **And** the recovery is credited against bad debt expense in the current period

## Small credit balance is written off rather than refunded @v1 [proposed]

- **Given** a closed account with a $2.15 credit balance and no forwarding address
- **When** the credit write-off job runs
- **Then** the credit is written off to miscellaneous income
- **And** the amount is excluded from the escheatment population (refunds/process-escheatment.feature.md)

## Supervisor approval above the automatic threshold @v1 [published]

- **Given** an outstanding balance of $47 recommended for write-off
- **When** the billing analyst submits the request
- **Then** the write-off is held pending supervisor approval
- **And** the request shows the collection history supporting it

## Write-off is blocked while the policy is in force @v1 [proposed]

- **Given** an in-force policy carrying an $8 shortfall
- **When** the write-off job evaluates the account
- **Then** the balance is excluded from write-off
- **And** the shortfall is carried to the next installment instead
