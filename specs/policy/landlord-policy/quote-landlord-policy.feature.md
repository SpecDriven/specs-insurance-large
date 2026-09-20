# Quote Landlord Policy

Rating the DP-3 dwelling fire form for non-owner-occupied residential
rentals of one to four units. Occupancy, tenant type, and lease term are
the primary eligibility questions.

## Four-unit limit governs program eligibility @v1 [published]

- **Given** a prospect submits a six-unit apartment building
- **When** the quote is requested
- **Then** the risk is ineligible for the DP-3 program
- **And** the prospect is referred to the commercial property team

## Multiple rentals are quoted as a scheduled dwelling account @v1 [proposed]

- **Given** a prospect with five separately owned single-family rentals in one county
- **When** the properties are quoted together
- **Then** the dwellings are scheduled on one account with a single policy term
- **And** a 7% scheduled-account credit is applied to each location

## Older wiring reduces the available liability limit @v1 [proposed]

- **Given** a 1931 dwelling with 60-amp service and no documented electrical update
- **When** the quote is rated
- **Then** the maximum liability limit offered is $100,000
- **And** the quote requires a four-point inspection before bind

## Section 8 tenancy is eligible at standard rates @v1 [proposed]

- **Given** a dwelling leased under a housing choice voucher program
- **When** the quote is rated
- **Then** no occupancy surcharge is applied
- **And** the housing authority is added as an interested party on the quote

## Short-term rental occupancy is declined @v1 [published]

- **Given** the prospect discloses the dwelling is listed nightly on a rental platform
- **When** the quote is rated
- **Then** the quote is declined for transient occupancy
- **And** the decline reason is recorded for the loss-history file

## Single-family rental quote on the DP-3 form @v1 [published]

- **Given** a prospect owns a 1,450 square foot single-family rental in Boise, Idaho
- **And** the dwelling is leased on a 12-month written lease
- **When** the prospect requests a quote
- **Then** an annual premium is quoted for each available package

| package  | dwelling | fair rental value | liability  | premium |
| -------- | -------- | ----------------- | ---------- | ------- |
| Basic    | $210,000 | 10% of dwelling   | —          | $718    |
| Standard | $210,000 | 20% of dwelling   | $300,000   | $946    |
| Premier  | $240,000 | 20% of dwelling   | $500,000   | $1,188  |

## Vacant dwelling is quoted only on the vacancy form @v1 [published]

- **Given** a dwelling reported as vacant for the past 90 days
- **When** the quote is requested
- **Then** the DP-3 quote is not offered
- **And** a vacant dwelling quote with a 90-day term is offered instead
