# Process ACH Payment

Handles bank draft payments submitted by the insured or drafted under an
autopay authorization, including the NACHA return window.

## ACH return code R01 reverses the payment @v1 [proposed]

- **Given** an ACH payment that posted 4 business days ago
- **When** the bank returns the item with code R01, insufficient funds
- **Then** the payment is reversed as of the original effective date
- **And** a returned payment fee is assessed per the schedule

| return code | description               | fee | retry allowed |
| ----------- | ------------------------- | --- | ------------- |
| R01         | Insufficient funds        | $20 | yes, once     |
| R02         | Account closed            | $20 | no            |
| R07         | Authorization revoked     | $0  | no            |
| R10         | Customer advises unauthorized | $0 | no        |

## Duplicate draft within the same cycle is blocked @v1 [proposed]

- **Given** an installment already drafted successfully this cycle
- **When** a second draft for the same installment is initiated
- **Then** the duplicate is blocked before submission to the originating bank
- **And** the attempt is logged against the account for audit

## Revoked authorization stops future drafts @v1 [published]

- **Given** a return code R07 received on an autopay draft
- **When** the return is processed
- **Then** the autopay enrollment is terminated immediately
- **And** the insured is sent a notice with alternate payment instructions

## Routing number validation rejects a bad entry @v1 [published]

- **Given** an insured entering bank details in the service center
- **When** the routing number fails the ABA check-digit test
- **Then** the entry is rejected before any draft is attempted
- **And** the insured is prompted to re-enter the routing number

## Same-day ACH is offered inside the cancellation window @v1 [proposed]

- **Given** a policy with a nonpayment cancellation effective in 36 hours
- **When** the insured initiates a bank payment before the 2:00 PM cutoff
- **Then** same-day ACH is offered and the payment is credited with today's date
- **And** the pending cancellation is suspended pending settlement

## Successful ACH draft posts on the settlement date @v1 [published]

- **Given** an authorized checking account on file at First Ridge Bank
- **When** the $288 installment is drafted
- **Then** the payment posts with the draft date as its effective date
- **And** the account balance is reduced by $288 pending settlement
