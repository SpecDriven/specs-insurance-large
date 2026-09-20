# Notify a Lienholder of a Policy Change

Lienholders receive notice when coverage that protects their collateral is
reduced, cancelled, or lapses. Most states give the lienholder its own
notice period, longer than the one owed to the insured.

[Jira:INS-903](https://jira.com/INS-903)

## Adding coverage produces no notice @v1 [proposed]

- **Given** a financed vehicle carrying liability only
- **When** the insured adds comprehensive coverage
- **Then** no lienholder notice is generated because the collateral position improves
- **And** the change is reflected on the next evidence of insurance the lienholder requests

## Cancellation notice reaches the lienholder first @v1 [published]

- **Given** a financed vehicle with Cascade Credit Union as loss payee
- **When** a notice of cancellation for non-payment is issued (policy/auto-policy/cancel-policy.feature.md)
- **Then** the lienholder is mailed a 20-day notice while the insured receives 10 days
- **And** the effective cancellation date is set to the later of the two notice periods

## Dropping collision triggers a coverage-reduction notice @v1 [published]

- **Given** an in-force policy with collision coverage on a financed vehicle
- **When** the insured endorses collision off mid-term
- **Then** the lienholder is notified of the coverage reduction within 3 business days
- **And** the notice names the vehicle by VIN and the coverage removed

## Electronic delivery through the tracking vendor @v1 [published]

- **Given** a lienholder enrolled with Acme's insurance tracking vendor
- **When** any notifiable change occurs
- **Then** the notice is transmitted in the nightly vendor file instead of by mail
- **And** the vendor acknowledgement identifier is stored against the notice

## Lienholder removed after the notice was queued @v1 [proposed]

- **Given** a coverage-reduction notice queued for tonight's mailing
- **When** the lienholder interest is released earlier the same day
- **Then** the queued notice is withdrawn before release
- **And** the withdrawal reason is recorded as interest released before mailing

## Reinstatement rescinds the lienholder notice @v1 [published]

- **Given** a cancellation notice already sent to the lienholder
- **When** the insured pays the past-due balance before the cancellation date
- **Then** a rescission notice is sent to the lienholder on the same day
- **And** the original notice is superseded in the correspondence history
