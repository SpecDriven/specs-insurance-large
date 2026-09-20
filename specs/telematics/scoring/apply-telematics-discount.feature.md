# Apply the Telematics Discount

The composite driving score (calculate-driving-score.feature.md) maps to a
renewal discount band filed with each state. The credit is shown as a
separate line item on the declarations page.

## Discount applies only to the coverages named in the filing @v1 [published]

- **Given** an earned 18% telematics discount
- **When** the policy premium is assembled
- **Then** the credit is applied to liability and collision
- **And** no credit is applied to comprehensive, roadside assistance, or rental reimbursement

## Discount stacks under the total credit cap @v1 [proposed]

- **Given** a policy already carrying a 15% good-driver and 8% multi-policy discount
- **And** an earned 22% telematics discount
- **When** the credits are stacked against a filed 40% total cap
- **Then** the applied credits are trimmed to reach exactly 40%
- **And** the trimmed amount is shown on the rating worksheet

## Mid-term score change does not alter the current premium @v1 [proposed]

- **Given** a scored period that closes 40 days into a six-month term
- **When** the new score is published
- **Then** the in-force premium is unchanged
- **And** the score is held for the next renewal rating

## Poor score results in no credit rather than a surcharge @v1 [published]

- **Given** a composite score of 41 in a state that prohibits telematics surcharges
- **When** the renewal is rated
- **Then** the discount is set to 0%
- **And** no surcharge is applied

## Score is refreshed each renewal @v1 [proposed]

- **Given** a participant entering their third consecutive term
- **When** the renewal rates
- **Then** the most recent completed monitoring period is used
- **And** the prior term's score no longer affects the premium

## Score maps to a filed discount band @v1 [published]

- **Given** a completed monitoring period with a composite score of 87
- **When** the renewal is rated
- **Then** the filed band for scores 85 through 94 is selected
- **And** a 22% telematics discount is applied to the bodily injury, property damage, and collision premiums
