# Migrate Policies to a New Product Version

Moving in-force policies from one product version to its successor at their
next renewal. Migration maps coverages and forms one to one where possible
and raises an exception where it cannot (version-a-product.feature.md).

[Jira:PC-118](https://jira.com/PC-118)

## Coverage with no successor raises an exception @v1 [published]

- **Given** a policy carrying the discontinued towing endorsement form AA-1180
- **When** the migration mapping runs
- **Then** the policy is held in the migration exception queue
- **And** the underwriter must choose a replacement coverage or a non-renewal before the offer is produced

## Dry run before the migration is committed @v1 [proposed]

- **Given** a scheduled migration that has not yet started
- **When** the product manager runs it in dry-run mode
- **Then** mapped counts, exception counts, and projected premium change are reported without writing to any policy
- **And** the dry-run result expires after 14 days

## Halting a migration in flight @v1 [proposed]

- **Given** a migration that has already moved 1,900 of 6,300 policies
- **When** the product manager halts it
- **Then** policies not yet renewed stay on version 2025.4
- **And** policies already renewed on 2026.1 are left in place and listed on the halt report

## Migration honours the renewal notice window @v1 [published]

- **Given** a policy expiring on May 15 in a state requiring a 45-day renewal notice
- **When** the migration would produce the offer fewer than 45 days before expiry
- **Then** the policy is deferred to the following renewal
- **And** the deferral reason is recorded as insufficient notice lead time

## Rate impact from migration is capped @v1 [published]

- **Given** a migrated policy whose premium rises 31% purely from the version change
- **When** the renewal offer is rated
- **Then** the filed capping rule is applied (product/rate-filings/cap-renewal-rate-increase.feature.md)
- **And** the capped portion is attributed to migration rather than to a rate revision

## Schedule a migration at next renewal @v1 [published]

- **Given** 6,300 policies in force on version 2025.4
- **When** the product manager schedules a migration to version 2026.1 at next renewal
- **Then** each policy is mapped to 2026.1 when its renewal offer is rated
- **And** no in-force term is disturbed before its expiry date
