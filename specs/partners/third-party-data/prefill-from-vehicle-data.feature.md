# Prefill From Vehicle Data

Populating vehicle and household detail from a VIN decode and a registration
lookup so the applicant types less. Prefilled values are always shown to the
applicant for confirmation and never bind silently.

## Anti-theft device prefills a discount @v1 [published]

- **Given** a decoded VIN whose trim includes a factory passive anti-theft system
- **When** the quote is rated
- **Then** the comprehensive anti-theft discount is applied automatically
- **And** the discount cites the VIN decode as its evidence source

## Prefilled data expires with the quote @v1 [proposed]

- **Given** a quote prefilled from vendor data 40 days ago
- **When** the applicant returns to complete the purchase and the prefill currency limit is 30 days
- **Then** the prefilled vehicle attributes are re-verified before binding
- **And** any attribute that changed is highlighted for the applicant to confirm

## Registration lookup surfaces an unlisted vehicle @v1 [published]

- **Given** an applicant at a garaging address in Mesa, Arizona
- **When** the registration lookup returns a second vehicle registered at that address
- **Then** the applicant is asked whether the vehicle belongs on the policy
- **And** declining the vehicle records an exclusion reason for underwriting review

## Salvage brand blocks physical damage coverage @v1 [proposed]

- **Given** a VIN decode returning a salvage title brand from the Nebraska title record
- **When** the applicant selects collision and comprehensive
- **Then** physical damage coverage is not offered on that vehicle
- **And** liability-only coverage remains available with the brand noted on the quote

## Unreadable VIN falls back to manual entry @v1 [proposed]

- **Given** a VIN that fails the check-digit validation
- **When** the decode is attempted
- **Then** the applicant is asked to enter year, make, and model by hand
- **And** the vehicle is flagged for VIN verification before issue (policy/auto-policy/bind-policy.feature.md)

## VIN decode prefills year, make, and symbol @v1 [published]

- **Given** an applicant who enters VIN 1HGCV1F30LA042118
- **When** the vendor decode returns
- **Then** the year, make, model, body style, and ISO vehicle symbol are prefilled
- **And** the applicant may override the model trim but not the decoded symbol
