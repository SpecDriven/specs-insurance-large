# Log Sensitive Data Access

Every read of protected data — medical records on a bodily injury claim, a
government identifier, or bank detail — is logged with the actor, the
purpose, and the record touched (manage-role-based-access.feature.md).

## Access to a colleague's own policy is flagged @v1 [published]

- **Given** an employee who is also an Acme policyholder
- **When** another employee opens that policy record
- **Then** the access is logged and flagged for the employee-record monitoring queue
- **And** the flag clears if the accessing user holds an open servicing task on the policy

## Anomalous volume triggers a review @v1 [proposed]

- **Given** a service representative who normally views 40 records a day
- **When** the representative views 610 records in one shift
- **Then** a monitoring alert is raised to the security team
- **And** the representative's sensitive-data entitlements are suspended pending the review outcome

## Bulk export requires a stated purpose @v1 [published]

- **Given** an analyst exporting 5,000 customer records containing government identifiers
- **When** the export is requested
- **Then** the analyst must select a purpose and a retention period before the export runs
- **And** the export identifier is logged so every downstream copy can be traced

## Customer may request their access history @v1 [proposed]

- **Given** a verified customer who requests a record of who viewed their data
- **When** the request is fulfilled
- **Then** the customer receives the dates, the accessing business unit, and the purpose
- **And** individual employee names are withheld unless required by state law

## Logs are retained for seven years @v1 [proposed]

- **Given** an access log entry written today
- **When** the retention sweep runs in six years
- **Then** the entry is retained
- **And** entries older than seven years are purged unless held under a litigation hold

## Reading a medical record writes an access log entry @v1 [published]

- **Given** an adjuster with entitlement to bodily injury medical records
- **When** the adjuster opens the medical records tab on a claim
- **Then** an access log entry records the user, the claim number, the record class, and the timestamp
- **And** the entry is immutable once written
