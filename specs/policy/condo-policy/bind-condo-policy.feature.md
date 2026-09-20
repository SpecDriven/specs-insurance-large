# Bind Condo Policy

Issuing an HO-6 from an accepted quote (quote-condo-policy.feature.md).
The association's certificate and the lender's requirements both gate the
bind.

[Jira:ABC-655](https://jira.com/ABC-655)

## Accepted quote binds on the requested effective date @v1 [published]

- **Given** an accepted HO-6 quote for unit 4B with a $512 annual premium
- **When** the applicant signs the application and pays in full
- **Then** the policy is issued effective 2026-07-01 at 12:01 a.m.
- **And** a declarations page and the HO 00 06 form are delivered electronically

## Applicant with two water losses in three years is declined @v1 [published]

- **Given** a prior-carrier loss run showing two paid water damage claims since 2023
- **When** underwriting reviews the bind request
- **Then** the bind is declined for loss frequency
- **And** the applicant receives an adverse action notice citing the loss run source

## Closing-day bind is effective at the recorded transfer time @v1 [proposed]

- **Given** a purchase closing scheduled for 2026-07-01 at 2:00 p.m.
- **When** the applicant requests coverage to begin at closing
- **Then** the policy is bound effective 2026-07-01 at 12:01 a.m. to avoid a gap
- **And** the prior owner's HO-6 is confirmed as terminating the same day

## First payment returned unpaid voids the bind from inception @v1 [proposed]

- **Given** a policy bound on the strength of an electronic check
- **When** the payment is returned for insufficient funds within 10 days
- **Then** the policy is voided flat from inception
- **And** the lender and the association are notified that no coverage is in force

## Lender requires evidence naming the unit and the association @v1 [published]

- **Given** the unit is financed by Cascade Mutual, loan 7712-004
- **When** the policy is bound
- **Then** an evidence of property insurance is issued naming the lender as mortgagee
- **And** the evidence states the unit number and the association name exactly as on the deed

## Missing master policy declarations holds the bind @v1 [published]

- **Given** an applicant who cannot supply the association's current master policy declarations
- **When** the bind is attempted
- **Then** the bind is held pending receipt of the declarations
- **And** the quote rates are held for 15 days
