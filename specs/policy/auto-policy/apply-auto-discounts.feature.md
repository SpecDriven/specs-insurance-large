# Apply Auto Discounts

Discount eligibility, stacking order, and re-verification. Discounts are
applied after the territory factor and before the policy-level fees.

## Anti-theft credit is limited to comprehensive premium @v1 [proposed]

- **Given** a vehicle with a factory-installed passive disabling device
- **When** the anti-theft credit is applied
- **Then** the credit reduces only the comprehensive premium
- **And** no credit is applied to liability, collision, or medical payments

## Good-student discount expires when the transcript is not refiled @v1 [published]

- **Given** a rated driver receiving the good-student discount
- **And** no qualifying transcript has been filed within 12 months
- **When** the renewal is rated
- **Then** the good-student discount is removed
- **And** the insured is notified 30 days before the renewal effective date

## Multi-policy discount requires a matching named insured @v1 [published]

- **Given** an auto quote for Marisol Reyes
- **And** an in-force Acme homeowners policy naming Marisol Reyes as first named insured
- **When** the quote is rated
- **Then** a 12% multi-policy discount is applied to the liability and physical damage premium
- **And** the discount is shown as a separate line item on the quote

## Paid-in-full and autopay discounts stack @v1 [published]

- **Given** the insured selects the paid-in-full billing plan and enrolls in autopay
- **When** the premium is finalized
- **Then** both the 6% paid-in-full and the 3% autopay discounts are applied
- **And** the combined credit is computed on the pre-fee premium

## Telematics enrollment grants a provisional discount @v1 [published]

- **Given** the insured enrolls a vehicle in the DriveWise telematics program at bind
- **When** the policy is issued
- **Then** a provisional 10% discount applies for the first term
- **And** the final discount is set at renewal from at least 90 days of driving data

## Telematics enrollment grants a provisional discount @v2 [proposed]

Adds a hard-braking cap to v1.

- **Given** the insured enrolls a vehicle in the DriveWise telematics program at bind
- **When** the policy is issued
- **Then** a provisional 10% discount applies for the first term
- **And** the final renewal discount is capped at 5% when hard-braking events exceed 12 per 1,000 miles
- **And** the insured may withdraw from the program without losing the provisional discount

## Total discount is capped at the filed maximum @v1 [proposed]

- **Given** a quote qualifying for discounts totalling 41%
- **And** the state filing caps aggregate discounts at 35%
- **When** the premium is computed
- **Then** the aggregate credit is reduced to 35%
- **And** the capped amount is disclosed on the declarations page
