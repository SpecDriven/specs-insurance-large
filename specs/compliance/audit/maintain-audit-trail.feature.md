# Maintain an Audit Trail

Every material change to a policy, claim, or payment is recorded with the
actor, timestamp, and before-and-after values. The trail is append-only and
survives the life of the record.

[Jira:PC-1109](https://jira.com/PC-1109)

## Audit entries cannot be edited or removed @v1 [published]

- **Given** an existing audit entry for a premium waiver
- **When** any user attempts to modify or delete the entry
- **Then** the operation is refused
- **And** the attempt is itself recorded as an audit event

## Audit gap detection runs weekly @v1 [proposed]

- **Given** a policy whose premium changed between two consecutive snapshots
- **When** the weekly reconciliation runs and finds no corresponding audit entry
- **Then** a control exception is raised to internal audit
- **And** the affected policy is listed on the exception report

## Batch job writes a single summary entry @v1 [proposed]

- **Given** a nightly rerate job touching 14,200 renewal policies
- **When** the job completes
- **Then** one job-level audit entry is written with the run identifier and record count
- **And** individual policy entries reference that run identifier

## Endorsement records the changed values @v1 [published]

- **Given** an in-force auto policy with a 100/300 bodily injury limit
- **When** an endorsement raises the limit to 250/500 (policy/auto-policy/endorse-policy.feature.md)
- **Then** an audit entry records the user, the effective date, and the old and new limits
- **And** the premium delta is recorded alongside the coverage change

## Reserve changes are captured with their rationale @v1 [published]

- **Given** a bodily injury claim with a $15,000 indemnity reserve
- **When** the adjuster raises the reserve to $62,000
- **Then** the reserve movement is written to the audit trail
- **And** the adjuster's stated rationale is required before the change is saved

## Retention differs by record class @v1 [proposed]

- **Given** the retention schedule for audited records
- **When** the purge job evaluates entries
- **Then** entries are kept for the period matching their record class

| record class            | retention from closure |
| ----------------------- | ---------------------- |
| Policy transaction      | 7 years                |
| Claim file              | 7 years                |
| Bodily injury with minor| 10 years after majority|
| Financial ledger        | 10 years               |

## Service account activity is attributed to its caller @v1 [published]

- **Given** an agency portal change submitted through the integration service account
- **When** the audit entry is written
- **Then** the originating agency code and producer license number are recorded
- **And** the service account alone is not accepted as the actor
