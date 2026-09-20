# Implement Approved Rates

An approved filing is loaded into the rating engine and switched on for new
business and renewals according to the approved effective dates
(track-filing-approval.feature.md).

## Capping limits renewal premium shock @v1 [published]

- **Given** an approved capping rule of 15% per renewal term
- **And** a renewal whose uncapped premium change is +23%
- **When** the renewal is rated
- **Then** the premium change is capped at +15%
- **And** the remaining 8% is carried forward to the following renewal

## Premium comparison exhibit is produced before go-live @v1 [proposed]

- **Given** a rate revision staged in the pre-production rating environment
- **When** the compliance analyst runs the impact test
- **Then** a sample of 500 in-force policies is rated on old and new tables
- **And** the statewide average change is compared against the approved +4.0%
- **And** a variance greater than 0.5 percentage points blocks go-live

## Rate load fails validation and is rolled back @v1 [published]

- **Given** a rate table load with a territory code present in the rate pages but missing from the territory definition table
- **When** the load job runs
- **Then** the load aborts and no partial tables are committed
- **And** an implementation defect is opened against the filing

## Rates go live for new business on the approved date @v1 [published]

- **Given** an Ohio personal auto filing approved with a new-business effective date of 2026-04-01
- **When** a quote is requested on 2026-04-01 (policy/auto-policy/quote-policy.feature.md)
- **Then** the new rate tables are used
- **And** the quote's declarations page cites the new rate revision number

## Renewals pick up the change on a later date @v1 [published]

- **Given** the same filing with a renewal effective date of 2026-05-15
- **When** a policy renews on 2026-05-01 (policy/auto-policy/renew-policy.feature.md)
- **Then** the prior rate tables are used
- **And** a policy renewing on 2026-05-15 uses the new tables

## Withdrawn approval reverts the rating tables @v1 [proposed]

- **Given** implemented rates for a filing the Department later suspends
- **When** compliance triggers a rate reversion
- **Then** the prior rate revision is reinstated for new business the same day
- **And** policies already bound at the suspended rates are left undisturbed until renewal
