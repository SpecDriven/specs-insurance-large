# Apply State Cancellation Rules

Permitted cancellation reasons and the mechanics of earned premium vary by
state. These rules constrain the generic cancellation flow
(policy/auto-policy/cancel-policy.feature.md).

[Jira:INS-482](https://jira.com/INS-482)

## Cancellation after the underwriting window needs a permitted reason @v1 [published]

- **Given** a Florida personal auto policy in force for 72 days
- **And** Florida permits free cancellation only within the first 60 days
- **When** underwriting attempts to cancel for "unacceptable risk"
- **Then** the cancellation is blocked
- **And** the user is shown the list of permitted post-window reasons for Florida

## Cancellation is rescinded when the past-due amount clears @v1 [published]

- **Given** a pending non-payment cancellation with an effective date 4 days out
- **When** the insured pays the full past-due balance before that date
- **Then** the cancellation is rescinded with no lapse in coverage
- **And** a confirmation of continued coverage is mailed to the first named insured

## Carrier-initiated cancellation is always pro-rata @v1 [published]

- **Given** the same policy cancelled by Acme at day 90
- **When** the return premium is computed
- **Then** the calculation is pro-rata with no penalty
- **And** the return premium is $900

## Insured-requested cancellation is computed short-rate in Georgia @v1 [published]

- **Given** a Georgia homeowners policy with a $1,200 annual premium cancelled by the insured at day 90
- **When** the return premium is computed
- **Then** a 10% short-rate penalty is applied
- **And** the return premium is $810 (billing/refund-unearned-premium.feature.md)

## Material misrepresentation supports rescission to inception @v1 [proposed]

- **Given** an application that concealed an excluded driver in the household
- **When** the underwriter voids the policy for material misrepresentation
- **Then** the policy is rescinded back to its effective date
- **And** all premium is returned
- **And** the fraud file is referred to SIU (fraud-siu/referral/deny-claim-for-material-misrepresentation.feature.md)

## Non-payment cancellation is permitted in every state @v1 [published]

- **Given** an installment unpaid past the grace period (billing/collect-premium.feature.md)
- **When** the cancellation is processed
- **Then** the cancellation is allowed regardless of how long the policy has been in force
- **And** the reason code "non-payment of premium" is recorded

## North Carolina bars mid-term cancellation for a single loss @v1 [proposed]

- **Given** a North Carolina personal auto policy with one at-fault loss in the term
- **When** underwriting attempts a mid-term cancellation citing loss experience
- **Then** the cancellation is blocked as prohibited by statute
- **And** the file is routed to non-renewal review instead
