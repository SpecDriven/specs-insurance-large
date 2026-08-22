# Collect Premium

## Draft Scenario @v1 [proposed]

zzzzz

## Failed autopay starts the grace period @v1 [published]

- **Given** an installment due today
- **When** the autopay charge is declined
- **Then** the charge is retried in 3 days
- **And** a 10-day grace period starts
- **And** the insured is notified by email and text

## Monthly installment plan @v1 [published]

- **Given** a bound policy with a $600 six-month premium
- **When** the insured chooses the monthly installment plan
- **Then** the premium is billed in 6 monthly installments
- **And** each installment carries the plan's service fee

| plan            | payments | service fee per payment |
| --------------- | -------- | ----------------------- |
| Paid in full    | 1        | $0                      |
| Two-pay         | 2        | $3                      |
| Monthly autopay | 6        | $5                      |

## S5 @v1 [proposed]

fsfsdfsd

## S6 @v1 [proposed]

fvfgfgf

## S6 @v2 [published]

## T8 @v1 [published]

fsfsfsdfsdfsd

## U1-S3 @v1 [proposed]

t2

## U2-s4 @v1 [published]

eee

## Unpaid balance triggers a cancellation notice @v1 [published]

- **Given** an installment still unpaid at the end of the grace period
- **When** the nightly billing job runs
- **Then** a notice of cancellation for non-payment is issued (policy/auto-policy/cancel-policy.feature.md)
- **And** paying the past-due amount before the cancellation date rescinds the notice

| Employee | Salary |
| -------- | ------ |
| Yulia    | 200000 |
