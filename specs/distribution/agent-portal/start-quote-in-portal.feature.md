# Start a Quote in the Agent Portal

Appointed producers quote personal lines directly in the portal. The
portal pre-fills what it can, enforces the producer's authority, and hands
anything outside appetite to an underwriter
(hand-off-quote-to-underwriter.feature.md).

## Duplicate quote on the same risk is merged @v1 [proposed]

- **Given** an existing open quote for the same applicant and vehicle identification number
- **When** a second producer at the same agency starts a new quote for that risk
- **Then** the producer is shown the existing quote instead of creating a duplicate
- **And** the original producer remains the producer of record on the quote

## Motor vehicle report order is disclosed to the applicant @v1 [published]

- **Given** a quote that requires ordering a motor vehicle report
- **When** the producer requests the rated premium
- **Then** the applicant's consent to the report order is captured before the order is placed
- **And** the consent record is retained with the quote

[test: motorVehicleReportOrderIsDisclosedToTheApplicant : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/StartQuoteInPortalTest.java#L77 ]

## Prior carrier information drives the transfer discount @v1 [proposed]

- **Given** an applicant with 3 years of continuous prior coverage at 100/300 limits
- **When** the producer records the prior carrier and expiration date
- **Then** a 7% transfer discount is applied to the quote
- **And** the discount is withheld when the prior coverage shows a lapse of more than 30 days

## Producer quotes personal auto from the portal @v1 [published]

- **Given** an appointed producer signed in to the agent portal
- **When** the producer enters a 2021 Honda CR-V, one licensed driver, and a Columbus garaging ZIP code
- **Then** a six-month premium is returned for each available plan (policy/auto-policy/quote-policy.feature.md)
- **And** the quote is saved under the producer's agency code

[test: producerQuotesPersonalAutoFromThePortal : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/StartQuoteInPortalTest.java#L30 ]

## Quote outside the producer's state authority is refused @v1 [published]

- **Given** a producer appointed only in Ohio
- **When** the producer enters a garaging address in Louisville, Kentucky
- **Then** the quote is not generated
- **And** the producer is told a Kentucky appointment is required

[test: quoteOutsideTheProducersStateAuthorityIsRefused : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/StartQuoteInPortalTest.java#L57 ]

## Roof age over 20 years routes a homeowners quote to review @v1 [published]

- **Given** a homeowners quote on a dwelling with a 24-year-old composition shingle roof
- **When** the producer submits for rating (policy/home-policy/quote-homeowners-policy.feature.md)
- **Then** an indicative premium is shown marked "subject to inspection"
- **And** a four-point inspection is ordered before the quote can be bound

[test: roofAgeOver20YearsRoutesAHomeownersQuoteToReview : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/StartQuoteInPortalTest.java#L102 ]

## Saved quote expires after 30 days @v1 [proposed]

- **Given** a quote saved on 1 April 2026
- **When** 1 May 2026 arrives without the quote being bound
- **Then** the quote is marked expired
- **And** reopening it requires a fresh rate calculation at current rates
