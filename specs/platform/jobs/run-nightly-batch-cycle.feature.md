# Run the Nightly Batch Cycle

The overnight cycle that ages billing, produces renewal offers, processes
cancellations, and releases documents. Steps run in dependency order and the
cycle must complete before the morning service window opens.

**Assigned:** Jonas Berg

## Billing aging drives cancellation and notice steps @v1 [published]

- **Given** installments that reached the end of their grace period today (billing/collect-premium.feature.md)
- **When** the billing aging step runs
- **Then** cancellations for non-payment are staged for the cancellation step
- **And** the notice step picks them up in the same cycle

## Critical step failure halts downstream work @v1 [proposed]

- **Given** the policy term roll step failing partway through
- **When** the cycle evaluates the failure
- **Then** every downstream step is held and the cycle is marked failed
- **And** the on-call engineer is paged with the failing step and its checkpoint

## Cycle completes inside the service window @v1 [published]

- **Given** a nightly cycle starting at 11:15 PM Central with 34 steps
- **When** every step completes successfully
- **Then** the cycle is marked complete before the 5:30 AM service window opens
- **And** the completion time and per-step durations are recorded

## Cycle is not run twice for the same business date @v1 [proposed]

- **Given** a cycle already complete for business date September 18
- **When** an operator attempts to start the cycle again for that date
- **Then** the start is refused
- **And** the operator is directed to the individual job recovery path (recover-a-failed-job.feature.md)

## Dependency order is enforced @v1 [published]

- **Given** the renewal offer step depending on the rate table refresh step
- **When** the rate table refresh has not completed
- **Then** the renewal offer step does not start
- **And** it remains in waiting state rather than failing

## Non-critical step failure does not stop the cycle @v1 [proposed]

- **Given** the marketing extract step failing on a source table lock
- **When** the cycle evaluates the failure
- **Then** the cycle continues because the step is marked non-critical
- **And** the failure is carried to the morning exception report

## Overrun raises an operations alert @v1 [published]

- **Given** a cycle still running at 5:00 AM against a 5:30 AM window
- **When** the overrun monitor evaluates the remaining steps
- **Then** an operations alert is raised with the projected finish time
- **And** the document release step may be deferred to the daytime queue to protect the window
