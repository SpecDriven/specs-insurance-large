# Manage Communication Preferences

How a named insured chooses the channel, format, and cadence for policy
documents and servicing notices. Legally required notices follow their own
rules and cannot be suppressed by preference alone.

## Hard bounce reverts the account to paper @v1 [published]

- **Given** an account on paperless delivery
- **When** the renewal offer email hard-bounces twice within 10 days
- **Then** the account reverts to US Mail delivery on the next document
- **And** the insured is notified by text that paperless was turned off

## Insured opts into paperless delivery @v1 [published]

- **Given** a named insured with a verified email address on the account
- **When** the insured elects paperless delivery and accepts the electronic-delivery consent disclosure
- **Then** the declarations page and renewal offer are delivered to the secure document inbox
- **And** the consent timestamp, IP address, and disclosure version are retained for seven years

## Per-topic opt-out keeps billing alerts on @v1 [proposed]

- **Given** an insured enrolled in autopay
- **When** the insured opts out of the marketing and cross-sell topic only
- **Then** marketing email stops within one business day
- **And** payment-due and payment-failed alerts continue on the existing channel

| topic                | email    | SMS      | push     | suppressible |
| -------------------- | -------- | -------- | -------- | ------------ |
| Billing and payments | default  | opt-in   | opt-in   | no           |
| Claim status         | default  | default  | opt-in   | partial      |
| Policy documents     | default  | off      | off      | no           |
| Marketing            | opt-in   | opt-in   | opt-in   | yes          |

## Quiet hours defer an outbound call @v1 [proposed]

- **Given** an insured whose preferred contact window is 9:00 AM to 7:00 PM local time
- **When** a claim status call is queued at 8:15 PM in the insured's time zone
- **Then** the call is deferred to the next morning at 9:00 AM local time
- **And** an SMS with the claim number is sent instead if SMS is permitted

## Statutory notices ignore channel suppression @v1 [published]

- **Given** an insured who has suppressed all marketing and servicing email
- **When** a notice of cancellation for non-payment is generated (policy/auto-policy/cancel-policy.feature.md)
- **Then** the notice is still mailed by first-class mail with proof of mailing
- **And** the suppression flag is recorded as not applicable to statutory notices

## Two household members claim the same mobile number @v1 [proposed]

- **Given** two named insureds on the same auto policy list the same mobile number
- **When** the second insured enrolls that number for SMS alerts
- **Then** the enrollment is rejected as a duplicate contact point
- **And** a servicing task is opened for the agent to confirm the correct owner of the number
