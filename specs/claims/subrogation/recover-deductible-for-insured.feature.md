# Recover Deductible for the Insured

The insured's deductible rides along with the carrier's recovery and is
returned before the carrier retains its own share.

## Full recovery returns the whole deductible @v1 [published]

- **Given** a $1,000 collision deductible included in a subrogation demand
- **When** the adverse carrier pays the demand in full
- **Then** the $1,000 deductible is refunded to the insured within 10 business days
- **And** the refund letter identifies the recovering party and the date of recovery

## Insured has already been reimbursed by the adverse carrier @v1 [proposed]

- **Given** an insured who separately collected $1,000 directly from the at-fault driver
- **When** the carrier's recovery is allocated
- **Then** no deductible refund is issued
- **And** the direct reimbursement is documented to prevent a duplicate payment

## Made-whole state pays the insured first @v1 [proposed]

- **Given** a partial recovery of $600 in a state applying the made-whole doctrine
- **When** the allocation runs
- **Then** the entire $600 is applied to the insured's deductible before the carrier retains anything

## Pro-rata sharing on a partial recovery @v1 [published]

- **Given** paid indemnity of $11,400, an insured deductible of $1,000, and a recovery of $6,200
- **When** the recovery is allocated under the made-whole pro-rata rule
- **Then** the insured receives $500 and the carrier retains $5,700
- **And** the allocation method is explained in the accompanying letter

## Recovery expenses are shared proportionally @v1 [published]

- **Given** a $9,000 recovery with $1,200 in attorney fees and filing costs
- **When** the net allocation is calculated
- **Then** the insured's deductible share bears its proportional part of the $1,200
- **And** the expense deduction is itemized on the insured's statement

## Refund is undeliverable @v1 [proposed]

- **Given** a deductible refund draft returned as undeliverable after two mailings
- **When** the 180-day stale-date review runs
- **Then** the funds are moved to unclaimed property handling for the insured's last known state
- **And** a final attempt is made using the policy's email of record
