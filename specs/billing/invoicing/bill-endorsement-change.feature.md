# Bill an Endorsement Change

Converts a mid-term endorsement (policy/auto-policy/endorse-policy.feature.md)
into additional premium or a return credit, and decides whether it is
billed now or spread across the remaining installments.

## Additional premium from a vehicle addition @v1 [published]

- **Given** a policy with 94 days remaining in the term
- **When** an endorsement adds a 2022 Subaru Outback for $482 annualized
- **Then** the pro-rata additional premium of $124 is calculated
- **And** the amount is spread across the remaining installments

## Backdated endorsement recalculates already-billed installments @v1 [published]

- **Given** an endorsement backdated 40 days to correct a garaging address
- **And** two installments have already been billed since that date
- **When** the endorsement is processed
- **Then** the billed installments are recalculated and the variance is posted as a single adjustment
- **And** no late fee is assessed on the resulting balance change

## Endorsement notice accompanies the revised declarations @v1 [proposed]

- **Given** a processed endorsement that raises the six-month premium by $206
- **When** the billing documents are produced
- **Then** an amended declarations page and a revised installment schedule are issued together
- **And** the insured is notified at least 10 days before the changed installment is drafted

## Endorsement on a cancelled policy is rejected @v1 [proposed]

- **Given** a policy cancelled flat for nonpayment 12 days ago
- **When** a billing endorsement is submitted
- **Then** the transaction is rejected with reason "policy not in force"
- **And** the underwriter is notified to consider reinstatement first

## Return premium credits the account before any refund @v1 [published]

- **Given** an account with a $215 past due balance
- **When** an endorsement removing a driver generates $340 of return premium
- **Then** $215 is applied to the past due balance first
- **And** the remaining $125 is held as an account credit

## Small additional premium is billed immediately @v1 [proposed]

- **Given** an endorsement generating $18 of additional premium
- **And** the carrier's spread threshold is $25
- **When** the endorsement is billed
- **Then** the $18 is added to the next scheduled invoice rather than re-spreading the plan
