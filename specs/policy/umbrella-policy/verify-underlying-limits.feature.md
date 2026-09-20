# Verify Underlying Limits

The umbrella requires stated minimum limits on each scheduled underlying
policy. Verification runs at new business, at renewal, and whenever an
underlying policy changes.

## Insured responsible for the gap when underlying is reduced @v1 [published]

- **Given** an umbrella whose underlying auto limit was reduced without notice
- **When** a $900,000 auto liability loss occurs
- **Then** the umbrella pays only the amount above the limit that was required, not the limit carried
- **And** the insured retains the $150,000 shortfall

## Underlying auto limit falls below the requirement @v1 [published]

- **Given** an in-force umbrella requiring 250/500 underlying auto liability
- **When** the insured reduces the auto policy to 100/300 mid-term
- **Then** the umbrella file is flagged non-compliant within one business day
- **And** the insured receives a 20-day notice to restore the required limit

## Underlying carried by another carrier @v1 [proposed]

- **Given** the homeowners policy is written by a non-affiliated carrier
- **When** the insured uploads a current declarations page
- **Then** the limits are read from the uploaded declarations and recorded on the schedule
- **And** re-verification is scheduled 30 days before that policy's expiration

## Underlying policy cancels for non-payment @v1 [proposed]

- **Given** a scheduled underlying auto policy cancelled for non-payment effective June 12
- **When** the cancellation notice is received
- **Then** the umbrella is placed in non-compliant status as of June 12
- **And** an underwriter reviews the file for cancellation or reinstatement

## Underlying schedule meets the required minimums @v1 [published]

- **Given** required minimums of 250/500 auto bodily injury and $300,000 homeowners liability
- **When** the underlying schedule is verified at new business
- **Then** each scheduled policy is marked compliant
- **And** the verification date is stamped on the umbrella file

## Verification cannot reach the external carrier @v1 [proposed]

- **Given** the external carrier verification service returns a timeout for three consecutive attempts
- **When** the nightly verification job completes
- **Then** the schedule item is marked "unverified" rather than non-compliant
- **And** a manual verification task is assigned to the servicing agent
