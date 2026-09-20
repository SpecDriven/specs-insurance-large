# Order a Motor Vehicle Report

Ordering an MVR from the state motor vehicle department through Acme's data
vendor to verify a driver's licence status and violation history during
quoting and underwriting (policy/auto-policy/quote-policy.feature.md).

## Cached report inside the freshness window @v1 [published]

- **Given** an MVR ordered for the same driver 21 days ago
- **When** a new quote requests an MVR and the freshness window is 30 days
- **Then** the stored report is reused without a new vendor charge
- **And** the quote records that a cached report was used

## Clean MVR confirms the good-driver discount @v1 [published]

- **Given** a quote listing Maria Delgado with a Texas licence and no self-reported violations
- **When** the MVR is ordered and returns no chargeable activity in the past 5 years
- **Then** the good-driver discount is confirmed on the quote
- **And** the report is stored against the driver with its order date and vendor reference

## Per-quote order cap @v1 [proposed]

- **Given** a quote that has already ordered 4 MVRs for 4 listed drivers
- **When** an agent adds a fifth driver and orders again on the same quote
- **Then** the order is held for agency approval because the per-quote cap is 4
- **And** the vendor spend for the quote is shown to the approving agency principal

## Suspended licence declines the driver @v1 [published]

- **Given** an MVR showing a licence suspended for an unsatisfied judgment
- **When** underwriting evaluates the driver
- **Then** the driver is ineligible and the quote is declined
- **And** the decline reason "licence not valid" is recorded on the quote

## Undisclosed violation re-rates the quote @v1 [published]

- **Given** a quote rated on a self-reported clean record
- **When** the MVR returns a speeding conviction dated 14 months ago
- **Then** the quote is re-rated with the minor violation surcharge
- **And** the prospect is shown the premium change and the reason before binding

## Unorderable jurisdiction requires a manual record @v1 [proposed]

- **Given** a driver holding a licence issued in Ontario
- **When** the MVR order is attempted and the vendor does not cover that jurisdiction
- **Then** the order is returned as unavailable
- **And** an underwriting task requires an abstract supplied by the applicant before binding

## Vendor timeout defers the order @v1 [proposed]

- **Given** an MVR order that does not return within 45 seconds
- **When** the quote flow continues
- **Then** the quote is rated on self-reported data and flagged as MVR pending
- **And** the order is retried in the background before the policy may be bound
