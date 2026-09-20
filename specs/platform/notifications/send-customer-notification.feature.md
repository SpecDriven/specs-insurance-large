# Send a Customer Notification

The notification service turns a domain event into a rendered message on the
insured's chosen channel, honouring the preferences held on the customer
record (customer/preferences/manage-communication-preferences.feature.md).

## Channel fallback when email is unavailable @v1 [proposed]

- **Given** a customer whose preferred channel is email and whose address is quarantined
- **When** a payment-due notification is requested
- **Then** the message is sent by SMS if the customer has consented to SMS
- **And** a customer with no usable electronic channel receives a printed notice

## Claim acknowledgement on the preferred channel @v1 [published]

- **Given** a first notice of loss recorded for a personal auto claim (claims/auto-accidents/record-car-accident.feature.md)
- **When** the claim acknowledgement notification is requested
- **Then** the message is rendered from template CLM-ACK-02 and sent by email
- **And** the send is written to the customer contact history with the claim number

## Deduplication within the idempotency window @v1 [published]

- **Given** a payment-received notification already sent for transaction 88214
- **When** the same event is republished within the 6-hour idempotency window
- **Then** no second message is sent
- **And** the duplicate suppression is logged against the original send

## Do-not-contact stops a marketing message @v1 [proposed]

- **Given** a customer flagged do-not-contact after a DOI complaint
- **When** a cross-sell notification is requested
- **Then** the send is suppressed and the reason is recorded
- **And** servicing and statutory notifications to the same customer are unaffected

## Missing merge field blocks the send @v1 [published]

- **Given** a template requiring the adjuster's direct phone number
- **When** the claim has no adjuster assigned yet (claims/auto-accidents/assign-adjuster.feature.md)
- **Then** the notification is not sent
- **And** it is held pending until the field is populated or the hold expires after 24 hours

## Priority determines the send-time target @v1 [proposed]

- **Given** notifications queued across several priority classes
- **When** the dispatcher selects the next batch
- **Then** each class is dispatched against its own service target

| class        | example                   | send-time target | quiet hours respected |
| ------------ | ------------------------- | ---------------- | --------------------- |
| Statutory    | cancellation notice       | 15 minutes       | no                    |
| Transactional| payment received          | 5 minutes        | no                    |
| Servicing    | claim status update       | 2 hours          | yes                   |
| Marketing    | cross-sell offer          | next business day| yes                   |

## SMS over the segment limit splits @v1 [published]

- **Given** a rendered SMS body of 402 characters
- **When** the message is sent
- **Then** it is split into 3 segments with a part indicator
- **And** the carrier cost is recorded against all 3 segments
