# Screen Applicant Eligibility

The first underwriting gate. Every new business submission is screened
against company eligibility rules before a quote is released
(check-prior-loss-history.feature.md).

## Applicant fails two of four screening checks @v1 [published]

- **Given** screening rules covering loss history, insurance score, prior cancellation, and residency
- **When** the applicant fails the insurance score and prior cancellation checks
- **Then** the submission is referred rather than auto-declined
- **And** both failed rules are listed on the referral (../referrals/refer-to-underwriter.feature.md)

| rule                 | outcome on failure | overridable by underwriter |
| -------------------- | ------------------ | -------------------------- |
| Valid license        | decline            | no                         |
| Loss history         | refer              | yes                        |
| Insurance score      | refer              | yes                        |
| Prior cancellation   | refer              | yes                        |
| Residency in state   | decline            | no                         |

## Applicant residing outside the writing state @v1 [proposed]

- **Given** an applicant with a mailing address in Nevada and a garaging address in Arizona
- **When** eligibility screening runs
- **Then** the submission is held for proof of primary residency
- **And** the agent is asked to upload two proofs of address

## Business-use exposure on a personal application @v1 [proposed]

- **Given** an applicant who discloses delivery driving for a rideshare platform
- **When** eligibility screening evaluates the use class
- **Then** the submission is declined for the personal lines program
- **And** the agent is directed to the commercial auto program (../../policy/commercial-auto/quote-commercial-auto.feature.md)

## Clean applicant clears screening automatically @v1 [published]

- **Given** an applicant with no prior losses, a valid license, and no prior cancellation
- **When** eligibility screening runs on the submission
- **Then** the submission is marked eligible and rating proceeds without human review
- **And** the screening result is stamped with the rule set version used

## Screening result is valid for 60 days @v1 [published]

- **Given** an eligibility screening completed on February 2
- **When** the same submission is rebound on April 20
- **Then** the stale screening result is discarded and screening reruns
- **And** the new result replaces the prior one on the file

## Third-party data vendor is unavailable @v1 [proposed]

- **Given** the motor vehicle report vendor returns a service error
- **When** eligibility screening attempts the license check
- **Then** the submission is placed in "screening incomplete" status rather than declined
- **And** the check is retried automatically every 30 minutes for 6 hours

## Unlicensed driver on the application @v1 [published]

- **Given** an applicant whose license is suspended in the state of garaging
- **When** eligibility screening runs
- **Then** the submission is declined
- **And** the decline reason "no valid driver license" is recorded on the file
