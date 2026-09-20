# Apply Rider Safety Course Discount

Premium credit for riders who complete an approved motorcycle safety
foundation course, and the rules for proving, expiring, and removing it.

## Advanced course stacks a smaller additional credit @v1 [proposed]

- **Given** a rider holding both a basic and an advanced rider course certificate
- **When** the discount is calculated
- **Then** the 10% basic credit and a 3% advanced credit are applied in sequence
- **And** the combined credit is capped at 12% of the rated premium

## Approved basic rider course earns a ten percent credit @v1 [published]

- **Given** a rider who completed an approved basic rider course on April 4 of last year
- **When** the premium is rated
- **Then** a 10% safety-course discount is applied to liability and collision premium
- **And** the completion certificate number is recorded on the policy

## At-fault loss does not remove the discount @v1 [proposed]

- **Given** an insured with a valid safety-course discount and a new at-fault collision
- **When** the policy is re-rated at renewal
- **Then** the safety-course discount remains in place
- **And** the loss is reflected through the accident surcharge instead

## Certificate older than three years no longer qualifies @v1 [published]

- **Given** a course completion dated more than 3 years before the renewal effective date
- **When** the policy is re-rated at renewal
- **Then** the safety-course discount is removed
- **And** the insured receives a renewal notice explaining the premium increase

## Unverifiable certificate is held for proof @v1 [published]

- **Given** a certificate number that does not match the state training registry
- **When** verification is attempted at new business
- **Then** the discount is applied provisionally for 30 days
- **And** the discount is removed with additional premium billed if proof is not received
