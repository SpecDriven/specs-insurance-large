# Handle a Downstream Outage

How Acme degrades when a dependency is unavailable: the rating engine, the
document composer, the payment gateway, or a third-party data vendor.
Customer-facing work continues where it safely can.

## Circuit breaker opens after repeated failures @v1 [published]

- **Given** a third-party data vendor failing 20 consecutive calls
- **When** the breaker opens
- **Then** further calls fail fast for 5 minutes instead of waiting on the timeout
- **And** a single trial call is allowed at the end of the interval to test recovery

## Document composer outage defers release @v1 [published]

- **Given** a document composer that is unavailable
- **When** declarations pages are queued for release
- **Then** the documents are held rather than failed
- **And** statutory notices with a deadline inside 72 hours are escalated for manual production

## Payment gateway outage queues the payment @v1 [published]

- **Given** a payment gateway returning errors on every authorization
- **When** an insured submits a payment through the portal
- **Then** the payment is accepted and queued with the submission timestamp preserved
- **And** the insured is told the payment is pending and the due date is honoured as of the submission time

## Queued work drains in priority order on recovery @v1 [proposed]

- **Given** 14,000 items queued during a four-hour outage
- **When** the dependency recovers
- **Then** items are drained in priority order, statutory ahead of servicing ahead of marketing
- **And** the drain rate is throttled so the recovered dependency is not overwhelmed

## Rating engine outage stops new business @v1 [proposed]

- **Given** a rating engine that cannot be reached
- **When** a prospect requests a quote (policy/auto-policy/quote-policy.feature.md)
- **Then** no premium is shown and no quote is saved with a provisional price
- **And** the prospect is offered a callback and the attempt is logged for follow-up

## Repeated outages escalate to the vendor @v1 [proposed]

- **Given** a vendor whose breaker has opened four times in a rolling 30 days
- **When** the monthly vendor review runs
- **Then** the outages are reported against the contracted availability commitment
- **And** a service credit claim is raised if the commitment was missed
