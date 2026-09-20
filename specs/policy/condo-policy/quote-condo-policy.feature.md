# Quote Condo Policy

Rating and quoting the HO-6 unit-owners form. The quote depends on what
the association's master policy covers, so the master policy declarations
drive the Coverage A selection (coordinate-with-master-policy.feature.md).

## Association with an open construction defect suit is surcharged @v1 [proposed]

- **Given** the association discloses pending construction defect litigation
- **When** the quote is rated
- **Then** a 15% association-risk surcharge is applied
- **And** loss assessment coverage is capped at $10,000

## Bare-walls master policy raises the recommended Coverage A @v1 [published]

- **Given** a master policy that excludes fixtures, cabinetry, and flooring within the unit
- **When** the quote is built
- **Then** the recommended Coverage A is set to the full interior build-out cost of $88,000
- **And** the recommendation is shown alongside the association's coverage description

## Basic unit-owners quote @v1 [published]

- **Given** a prospect owns unit 4B in the Harbor Point Association in Tampa, Florida
- **And** the association carries a bare-walls master policy
- **When** the prospect requests a quote
- **Then** an annual premium is quoted for each available Coverage A tier

| tier     | dwelling (Coverage A) | personal property | liability  | premium |
| -------- | --------------------- | ----------------- | ---------- | ------- |
| Basic    | $25,000               | $30,000           | $100,000   | $348    |
| Standard | $60,000               | $60,000           | $300,000   | $512    |
| Premier  | $100,000              | $90,000           | $500,000   | $704    |

## High-rise above the fifteenth floor is referred @v1 [published]

- **Given** a unit on the twenty-second floor of a 1978 building
- **When** the quote is requested
- **Then** the quote is referred to underwriting for a sprinkler and standpipe review
- **And** no rate is displayed until the referral clears

## Loss assessment limit is quoted as an option @v1 [published]

- **Given** a prospect reviewing the Standard tier
- **When** loss assessment coverage is added at $50,000
- **Then** the annual premium increases by $64
- **And** the coverage is described as responding to assessments for covered perils

## Quote expires 30 days after it is produced @v1 [proposed]

- **Given** a quote produced on 2026-06-02
- **When** the prospect returns on 2026-07-08 to bind
- **Then** the quote is expired and cannot be bound
- **And** a fresh quote is produced at current rates

## Unit rented to a tenant is declined on the HO-6 form @v1 [proposed]

- **Given** the prospect discloses the unit is leased to a tenant on a 12-month term
- **When** the quote is rated
- **Then** the HO-6 quote is declined
- **And** the prospect is routed to the landlord program (landlord-policy/quote-landlord-policy.feature.md)
