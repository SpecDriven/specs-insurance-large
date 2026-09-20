# Manage Past Due Balance

Tracks aging on unpaid premium, assesses late fees, and drives the
nonpayment cancellation path (policy/auto-policy/cancel-policy.feature.md).

## Active claim does not excuse the premium @v1 [proposed]

- **Given** an open collision claim on a policy with a past due balance
- **When** the nonpayment cancellation would take effect
- **Then** the cancellation proceeds on schedule
- **And** the claim adjuster is notified of the coverage termination date

## Aging buckets drive the collection treatment @v1 [proposed]

- **Given** accounts with balances at varying ages
- **When** the nightly aging job classifies them
- **Then** each account receives the treatment matching its bucket

| days past due | bucket  | treatment                   | late fee |
| ------------- | ------- | --------------------------- | -------- |
| 1–10          | grace   | reminder only               | $0       |
| 11–30         | current | late fee and dunning notice | $10      |
| 31–60         | aged    | cancellation notice issued  | $10      |
| 61+           | severe  | referred to collections     | $0       |

## Balance under the tolerance does not trigger cancellation @v1 [published]

- **Given** an account $4.20 past due and the carrier's $10 cancellation tolerance
- **When** the aging job evaluates the account
- **Then** no cancellation notice is issued
- **And** the shortfall is added to the next installment

## Disputed balance halts collection activity @v1 [published]

- **Given** an insured who opens a billing dispute over a $206 endorsement charge
- **When** the dispute is logged
- **Then** collection activity and late fees are suspended on the disputed amount
- **And** undisputed amounts continue to age normally

## Late fee assessed after the grace period @v1 [published]

- **Given** an installment of $144 that went unpaid through a 10-day grace period
- **When** the aging job runs on day 11
- **Then** a $10 late fee is assessed to the account
- **And** the balance moves into the 1-30 day aging bucket

## Partial cure restarts the notice clock @v1 [proposed]

- **Given** a cancellation notice issued for a $312 balance
- **When** the insured pays $150 and a new installment comes due
- **Then** the original notice is voided and a fresh notice is issued for the new amount
- **And** the full statutory notice period runs again from the new mailing date

## Statutory notice period governs the cancellation date @v1 [published]

- **Given** a Texas personal auto policy with premium unpaid 21 days past due
- **When** the nonpayment cancellation notice is generated
- **Then** the cancellation effective date is no earlier than 10 days after the notice is mailed
- **And** proof of mailing is retained for the file
