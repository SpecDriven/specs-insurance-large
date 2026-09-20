# Apply Installment Schedule

Assigns a payment plan to an account and lays out the down payment and
remaining installments. Plan changes mid-term re-spread the unbilled
premium only.

## Autopay enrollment waives the installment fee @v1 [proposed]

- **Given** an account on the quarterly plan carrying a $5 per-installment fee
- **When** the insured enrolls in autopay (payments/manage-autopay-enrollment.feature.md)
- **Then** the service fee is reduced to $0 on all unbilled installments
- **And** the fee already charged on billed installments is not reversed

## Minimum installment threshold collapses the schedule @v1 [published]

- **Given** a $210 renters policy premium and a monthly plan request
- **And** the carrier's minimum installment is $50
- **When** the schedule is applied
- **Then** the plan is downgraded to a two-pay schedule of $105 each
- **And** the insured is notified that the monthly plan was unavailable at this premium

## Off-cycle due dates align to the insured's elected billing day @v1 [proposed]

- **Given** an insured who elects the 15th of the month as their billing day
- **And** a policy effective on the 3rd
- **When** the installment schedule is applied
- **Then** the down payment is due on the effective date
- **And** each subsequent installment falls on the 15th

## Plan change is refused after the final installment is billed @v1 [proposed]

- **Given** an account whose last installment was billed 3 days ago
- **When** the insured requests a switch to the monthly plan
- **Then** the plan change is declined with reason "no unbilled premium remains"
- **And** the insured is offered the plan change effective at renewal

## Re-spread the schedule after a premium-bearing endorsement @v1 [published]

- **Given** an account on a quarterly plan with 2 installments remaining
- **When** an endorsement adds $360 of additional premium
- **Then** the $360 is spread evenly across the 2 remaining installments
- **And** already-billed installments are left untouched

## Select a six-pay plan at bind @v1 [published]

- **Given** a six-month auto policy with $900 written premium
- **When** the insured selects the monthly installment plan
- **Then** a 20% down payment of $180 is billed at bind
- **And** the remaining $720 is spread across 5 installments of $144
- **And** each installment carries the plan's service fee

| plan            | down payment | installments | service fee per installment |
| --------------- | ------------ | ------------ | --------------------------- |
| Paid in full    | 100%         | 0            | $0                          |
| Two-pay         | 50%          | 1            | $4                          |
| Quarterly       | 25%          | 3            | $5                          |
| Monthly autopay | 20%          | 5            | $3                          |
