# Endorse Umbrella Policy

Mid-term changes to an in-force personal umbrella: limits, household
members, scheduled exposures, and the premium adjustment that follows.

## Add a household member who reached driving age @v1 [published]

- **Given** a resident child who obtained a license on September 14
- **When** the child is added to the umbrella exposure schedule
- **Then** the exposure schedule and premium are revised effective September 14
- **And** the underlying auto policy is checked for the same driver (../auto-policy/add-driver.feature.md)

## Endorsement effective date precedes the policy inception @v1 [proposed]

- **Given** an umbrella incepting on January 1
- **When** an endorsement is submitted with a December 20 effective date
- **Then** the endorsement is rejected as outside the policy period
- **And** the agent is prompted to submit it against the prior term

## Increase the umbrella limit mid-term @v1 [published]

- **Given** an in-force $1,000,000 umbrella with 7 months remaining
- **When** the insured requests an increase to $2,000,000 effective the first of next month
- **Then** an endorsement is issued and the additional premium is charged pro-rata
- **And** a revised declarations page is delivered

## Limit increase requested with an open liability claim @v1 [published]

- **Given** an open bodily injury claim with a $410,000 reserve
- **When** the insured requests a limit increase to $5,000,000
- **Then** the request is held and referred to underwriting
- **And** no endorsement is issued until the claim reserve is reviewed

## Remove a sold rental dwelling @v1 [proposed]

- **Given** a scheduled rental dwelling sold on May 30
- **When** the insured submits the closing statement
- **Then** the dwelling is removed from the schedule effective May 30
- **And** a return premium is calculated pro-rata and applied to the account
