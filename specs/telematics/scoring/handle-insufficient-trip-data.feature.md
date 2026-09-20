# Handle Insufficient Trip Data

A score is only credible with enough miles and trips behind it. Thin
monitoring periods fall back to filed default treatment rather than producing
an unreliable discount.

## Credibility thresholds must both be met @v1 [published]

- **Given** a monitoring period with 31 trips and 210 miles
- **And** the filed credibility standard is 30 trips and 250 miles
- **When** the period closes
- **Then** the score is marked not credible
- **And** the filed default discount of 5% is applied at renewal

## Device outage days are excluded from the period @v1 [published]

- **Given** a confirmed manufacturer feed outage lasting 9 days
- **When** the period is evaluated
- **Then** the outage days are removed from the elapsed period
- **And** the period end date is pushed out by the same number of days

## Monitoring period is extended once @v1 [published]

- **Given** a period that closes below the credibility standard for the first time
- **When** the shortfall is detected
- **Then** the monitoring period is extended by 45 days
- **And** the insured is told how many more miles are needed

## Partial credibility blends the score with the default @v1 [proposed]

- **Given** a period at 70% of the required mileage with a composite score of 91
- **When** the blended score is computed
- **Then** the score is weighted 70% to the driver's result and 30% to the filed default
- **And** the blended value drives the discount band

## Seasonal low mileage is accepted with a garaged declaration @v1 [proposed]

- **Given** a vehicle declared off the road between December and February
- **When** the mileage test is applied
- **Then** the declared months are excluded from the credibility denominator
- **And** the declaration is verified against odometer readings at renewal

## Second shortfall ends participation @v1 [proposed]

- **Given** a participant who remains below the standard at the end of the extension
- **When** the extended period closes
- **Then** the enrollment is closed as "insufficient data"
- **And** the renewal is rated with no telematics credit (telematics/enrollment/withdraw-from-telematics-program.feature.md)
