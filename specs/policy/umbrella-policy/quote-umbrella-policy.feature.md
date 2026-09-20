# Quote Personal Umbrella Policy

Excess liability sitting above the insured's primary auto, homeowners, and
watercraft policies. Quoting depends on the underlying schedule
(verify-underlying-limits.feature.md).

## Applicant with three at-fault losses is declined @v1 [published]

- **Given** an applicant with 3 at-fault liability losses in the past 5 years
- **When** the umbrella application is rated
- **Then** no quote is offered
- **And** the decline reason "loss frequency exceeds umbrella appetite" is recorded

## Each additional rated vehicle increases the premium @v1 [published]

- **Given** a household with 2 rated vehicles on the base umbrella premium
- **When** a third vehicle and a fourth driver are added to the exposure schedule
- **Then** the premium is increased by the per-unit charge for each added exposure
- **And** the revised exposure schedule is shown on the quote

## Quote issued to an applicant without underlying auto @v1 [proposed]

- **Given** an applicant who does not own or lease any vehicle
- **When** the umbrella is quoted with a no-vehicle attestation on file
- **Then** the quote is issued with a non-owned auto liability exclusion attached

## Rental property exposure must be declared @v1 [published]

- **Given** the applicant owns a two-family rental in Ohio that is not listed on the application
- **When** the undisclosed rental is discovered during quoting
- **Then** the quote is voided pending a corrected application
- **And** the rental dwelling policy must be added to the underlying schedule

## Standard one million umbrella over auto and home @v1 [published]

- **Given** an applicant with a personal auto policy at 250/500 and an HO-3 at $300,000
- **When** a $1,000,000 umbrella is quoted
- **Then** an annual premium is returned with the underlying schedule attached
- **And** a $250 self-insured retention applies to losses not covered by underlying policies

| limit      | annual premium | additional household member |
| ---------- | -------------- | --------------------------- |
| $1,000,000 | $214           | $32                         |
| $2,000,000 | $318           | $47                         |
| $5,000,000 | $541           | $79                         |

## Watercraft over 26 feet triggers referral @v1 [proposed]

- **Given** the applicant owns a 31-foot cabin cruiser insured under a boat policy
- **When** the umbrella quote is requested
- **Then** the submission is referred to an underwriter (../../underwriting/referrals/refer-to-underwriter.feature.md)
- **And** proof of $500,000 underlying watercraft liability is requested

## Youthful operator surcharge on the umbrella @v1 [published]

- **Given** a 17-year-old licensed driver in the household
- **When** the umbrella is rated
- **Then** a youthful operator surcharge of $96 is applied
- **And** the underlying auto policy must carry at least 250/500 bodily injury
