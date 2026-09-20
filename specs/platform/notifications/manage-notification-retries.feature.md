# Manage Notification Retries

What happens after a send fails. Transient failures are retried with
backoff; permanent failures quarantine the contact point and fall back to a
mailed notice (send-customer-notification.feature.md).

## Exhausted retries fall back to print @v1 [published]

- **Given** a statutory notice whose three electronic attempts have all failed
- **When** the final attempt is exhausted
- **Then** the notice is routed to the print and mail vendor the same business day
- **And** the electronic failure history is attached to the proof of mailing

## Hard bounce is not retried @v1 [published]

- **Given** an email that returns a 550 mailbox-does-not-exist bounce
- **When** the bounce is processed
- **Then** no retry is attempted
- **And** the address is quarantined and the customer record is flagged for correction

## Provider outage pauses the whole channel @v1 [proposed]

- **Given** an SMS provider failing more than 40% of sends over 10 minutes
- **When** the circuit breaker opens
- **Then** SMS sends are paused and queued rather than retried individually
- **And** statutory notices immediately take the print fallback instead of waiting

## Retries stop when the underlying event is voided @v1 [proposed]

- **Given** a cancellation notice in its retry chain
- **When** the cancellation is rescinded because the past-due balance was paid
- **Then** the remaining retries are cancelled
- **And** the notification is closed with the reason recorded as event voided

## Stale notification is discarded rather than sent @v1 [proposed]

- **Given** a payment-due reminder that has been retrying for 72 hours
- **When** the next attempt is due and the relevance window is 48 hours
- **Then** the notification is discarded without sending
- **And** the discard is counted against the channel's reliability metric

## Transient provider error is retried with backoff @v1 [published]

- **Given** an email send that fails with a provider 503
- **When** the retry policy is applied
- **Then** the send is retried after 1, 5, and 25 minutes
- **And** a success on any attempt closes the retry chain
