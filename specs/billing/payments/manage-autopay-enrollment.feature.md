# Manage Autopay Enrollment

Enrollment, changes, and termination of recurring payment authorizations.
A failed draft under autopay starts the grace period described in
(billing/collect-premium.feature.md).

**Assigned:** Jonas Berg

## Autopay carries forward at renewal @v1 [proposed]

- **Given** an active autopay enrollment on a policy renewing next month (policy/auto-policy/renew-policy.feature.md)
- **When** the renewal is issued
- **Then** the authorization carries to the renewal term without re-enrollment
- **And** the insured receives a notice of the new draft amounts before the first draft

## Change the draft account mid-term @v1 [proposed]

- **Given** an active autopay enrollment on a savings account
- **When** the insured substitutes a different bank account
- **Then** the new authorization takes effect for drafts scheduled more than 3 business days out
- **And** the prior authorization is closed with an effective-dated record

## Enroll in autopay with a bank account @v1 [published]

- **Given** an insured with a quarterly installment plan and no recurring authorization
- **When** the insured enrolls using a verified checking account
- **Then** future installments are drafted 5 days before each due date
- **And** the autopay discount is applied to unbilled installments

## Enrollment inside the draft window starts next cycle @v1 [published]

- **Given** an installment due in 3 days and a 5-day pre-draft window
- **When** the insured enrolls in autopay today
- **Then** the current installment remains the insured's responsibility to pay manually
- **And** autopay begins with the following installment

## Expired card suspends the enrollment @v1 [proposed]

- **Given** an autopay enrollment backed by a card expiring at the end of this month
- **When** the expiration date passes without an updated card
- **Then** the enrollment is suspended rather than terminated
- **And** the insured is notified 15 days before expiry and again on the day it lapses

## Two failed drafts terminate the enrollment @v1 [published]

- **Given** an autopay enrollment with one prior failed draft this term
- **When** a second draft is returned unpaid
- **Then** the autopay enrollment is terminated
- **And** the autopay discount is removed from all unbilled installments
- **And** the insured is offered manual payment options
