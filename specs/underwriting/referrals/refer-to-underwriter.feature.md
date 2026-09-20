# Refer Submission to Underwriter

Routing a submission that cannot be auto-issued to a human underwriter,
with the referral reasons, queue assignment, and agent visibility that
go with it.

**Assigned:** Dana Whitfield

## Agent can add context before the underwriter opens it @v1 [proposed]

- **Given** a referral sitting unassigned in the queue
- **When** the agent uploads a roof replacement invoice and a note
- **Then** the attachment and note appear on the referral without changing its status
- **And** the underwriter sees the agent's submission time and comment

## Multiple reasons are consolidated into one referral @v1 [published]

- **Given** a submission that fails the insurance score rule and carries an over-limit request
- **When** the referral is created
- **Then** a single referral is opened listing both reasons in priority order
- **And** duplicate referrals for the same submission are suppressed

## No underwriter available in the routed queue @v1 [published]

- **Given** the Texas property queue has no available underwriter during a catastrophe surge
- **When** the referral cannot be assigned within 4 hours
- **Then** it is reassigned to the overflow queue
- **And** the reassignment is logged with the original routing decision

## Quote expires while the referral is open @v1 [proposed]

- **Given** a referral opened 4 days before the quote's expiration date
- **When** the quote reaches its expiration with the referral still pending
- **Then** the quote validity is extended to 5 days past the referral decision
- **And** the agent is notified of the new expiration date

## Referral on a risk the underwriter cannot bind @v1 [proposed]

- **Given** a referral requesting a $10,000,000 umbrella limit
- **When** the assigned underwriter's authority is $5,000,000
- **Then** the referral is escalated rather than decided (escalate-authority-limit.feature.md)

## Referral routed by line of business and state @v1 [published]

- **Given** a homeowners submission for a risk located in Texas
- **When** the referral is queued
- **Then** it is routed to the property team licensed in Texas
- **And** the referral SLA clock starts (apply-referral-sla.feature.md)

## Submission referred for a single rule failure @v1 [published]

- **Given** a submission that fails the loss frequency rule during screening
- **When** the referral is created
- **Then** the submission moves to the underwriting queue in "referred" status
- **And** the failing rule and its evaluated values are attached to the referral
