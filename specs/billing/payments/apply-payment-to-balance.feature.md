# Apply Payment to Outstanding Balance

Determines how received funds are distributed across fees, past due
installments, and current charges on an account.

## Credit balance offsets a new charge before refund @v1 [proposed]

- **Given** an account carrying a $95 unapplied credit
- **When** an endorsement generates $60 of additional premium
- **Then** the credit absorbs the $60 and $35 remains on account
- **And** no refund is triggered while the policy stays in force

## Insured directs payment to a specific policy @v1 [published]

- **Given** a consolidated account holding an auto and a boat policy
- **When** the insured remits with a memo naming the boat policy number
- **Then** the full payment is applied to the boat policy regardless of age
- **And** the auto policy balance remains past due

## Partial payment leaves the cancellation notice in force @v1 [published]

- **Given** a cancellation notice requiring $312 to rescind
- **When** the insured pays $200
- **Then** the $200 is applied to the balance but the cancellation remains scheduled
- **And** the insured is told the exact remaining amount and the date it must be received

## Payment reverses an in-flight cancellation @v1 [proposed]

- **Given** a nonpayment cancellation scheduled for tomorrow requiring $312
- **When** the full $312 is received and posted today
- **Then** the pending cancellation is rescinded with no lapse in coverage
- **And** a rescission notice is issued to the insured and any lienholder

## Standard application order across fees and premium @v1 [published]

- **Given** an account with a $20 returned payment fee and two unpaid installments
- **When** a payment sufficient to cover all items is received
- **Then** the fee is satisfied first, then the oldest installment, then the current one
- **And** the application order is recorded on each posting

## Unidentified remittance is held in suspense @v1 [proposed]

- **Given** a lockbox check with no policy number and an unmatched payer name
- **When** the cashiering job runs
- **Then** the funds are posted to suspense rather than to any account
- **And** a research task is created with a 5 business day service target
