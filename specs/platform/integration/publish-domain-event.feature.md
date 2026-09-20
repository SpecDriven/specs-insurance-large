# Publish a Domain Event

Policy, claim, and billing changes are published as versioned events on the
enterprise bus so downstream consumers stay current without polling the
systems of record.

[Jira:ABC-461](https://jira.com/ABC-461)

## Bind publishes a policy-issued event @v1 [published]

- **Given** a quote bound into a personal auto policy (policy/auto-policy/bind-policy.feature.md)
- **When** the transaction commits
- **Then** a PolicyIssued event is published carrying the policy number, term dates, and premium
- **And** the event references the transaction identifier so consumers can correlate it

## Event is published only after the commit @v1 [published]

- **Given** an endorsement whose database transaction rolls back
- **When** the publish step is evaluated
- **Then** no event reaches the bus
- **And** the outbox entry is discarded with the rollback

## Ordering is preserved per policy @v1 [published]

- **Given** an endorsement and a cancellation committed 200 milliseconds apart on the same policy
- **When** both events are published
- **Then** consumers receive them in commit order because the policy number is the partition key
- **And** events on different policies may be delivered in any relative order

## Schema change is additive within a major version @v1 [proposed]

- **Given** consumers on PolicyIssued version 2
- **When** a new optional field is added to the payload
- **Then** the version stays at 2 and existing consumers are unaffected
- **And** a field removal or a type change requires version 3 published alongside version 2

## Sensitive fields are omitted from the payload @v1 [proposed]

- **Given** a ClaimOpened event for a bodily injury claim
- **When** the payload is assembled
- **Then** medical detail and the claimant's full government identifier are omitted
- **And** consumers needing them must call the claim service under their own entitlement (platform/access/log-sensitive-data-access.feature.md)

## Unpublished outbox entries are swept @v1 [proposed]

- **Given** outbox entries older than 15 minutes that were never published
- **When** the sweeper runs
- **Then** the entries are republished and counted on the integration health metric
- **And** an entry still unpublished after 3 sweeps is raised to the on-call engineer
