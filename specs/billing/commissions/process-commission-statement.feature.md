# Process Commission Statement

Assembles the monthly producer statement from accrued commissions,
chargebacks, and adjustments, then releases payment.

[Jira:ABC-733](https://jira.com/ABC-733)

## Chargebacks net against current earnings @v1 [published]

- **Given** a statement period with $14,820 earned and $2,140 of chargebacks
- **When** the statement is assembled
- **Then** the net payable is $12,680
- **And** each chargeback shows the originating policy and cancellation date

## Commission is withheld while the appointment is suspended @v1 [published]

- **Given** a producer whose state appointment lapsed mid-period
- **When** the statement cycle closes
- **Then** the statement is produced but payment is placed on hold
- **And** payment releases automatically once the appointment is reinstated

## Monthly statement closes on the last business day @v1 [published]

- **Given** a producer with $14,820 of commission accrued during the period
- **When** the statement cycle closes
- **Then** a statement is produced listing every transaction with its policy number and effective date
- **And** payment is released within 10 business days of the close

## Negative net balance carries forward rather than invoicing @v1 [proposed]

- **Given** a producer with $900 earned and $3,400 of chargebacks in the period
- **When** the statement is assembled
- **Then** no payment is released and a $2,500 debit balance carries to the next period
- **And** the producer is notified of the debit balance and the recovery terms

## Statement dispute opens an adjustment review @v1 [proposed]

- **Given** a producer who disputes a $410 line on the released statement
- **When** the dispute is submitted within the 60-day window
- **Then** an adjustment review task is opened with a 15 business day target
- **And** any resulting correction appears as an adjustment on a later statement, not a reissue

## Tax reporting threshold triggers a 1099 @v1 [proposed]

- **Given** an independent producer paid $612 in commission for the calendar year
- **And** the reporting threshold is $600
- **When** the year-end tax file is produced
- **Then** the producer is included in the 1099-NEC filing
- **And** producers below the threshold are excluded
