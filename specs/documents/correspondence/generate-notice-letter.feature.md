# Generate a Notice Letter

Notices of cancellation, non-renewal, and premium change carry statutory
content and timing requirements that vary by state. Getting the days and
the wording right is what makes the notice effective.

## Bad address suspends the notice and escalates @v1 [published]

- **Given** a mailing address flagged undeliverable by the address validation service
- **When** a cancellation notice is generated
- **Then** the notice is held and not mailed to the invalid address
- **And** a service representative is tasked to obtain a current address before the notice period lapses

## Cancellation notice honours the state notice period @v1 [published]

- **Given** an Ohio personal auto policy being cancelled for non-payment
- **When** the cancellation notice is generated on 1 June 2026
- **Then** the cancellation effective date is no earlier than 11 June 2026
- **And** the notice states the amount required to avoid cancellation

| state    | non-payment notice days | underwriting cancellation days | non-renewal days |
| -------- | ----------------------- | ------------------------------ | ---------------- |
| Ohio     | 10                      | 30                             | 30               |
| Indiana  | 10                      | 20                             | 20               |
| Kentucky | 14                      | 20                             | 75               |
| Michigan | 10                      | 30                             | 30               |

## Non-renewal notice is timed from the expiration date @v1 [published]

- **Given** a Kentucky homeowners policy expiring 1 October 2026
- **When** a non-renewal decision is recorded
- **Then** the notice must be issued on or before 18 July 2026
- **And** a decision recorded after that date results in the policy renewing as offered

## Notice to the lienholder accompanies the insured's copy @v1 [published]

- **Given** a cancellation notice on a policy with a recorded lienholder
- **When** the notice is generated
- **Then** a copy is addressed to the lienholder at its notice address
- **And** the lienholder copy is produced in the same batch as the insured's

## Premium increase above a threshold requires its own notice @v1 [proposed]

- **Given** a renewal offer where premium rises from $840 to $1,008
- **When** the renewal is prepared (policy/auto-policy/renew-policy.feature.md)
- **Then** a premium change notice is generated because the increase reaches 20%
- **And** the notice explains the principal factors driving the increase

## Reinstatement withdraws a pending cancellation notice @v1 [proposed]

- **Given** a cancellation notice mailed 2 June 2026 effective 12 June 2026
- **When** full payment is received on 9 June 2026
- **Then** the cancellation is withdrawn before it takes effect
- **And** a confirmation letter tells the insured the policy remains in force without a lapse

## Underwriting cancellation states a specific reason @v1 [proposed]

- **Given** a policy being cancelled within the 60-day underwriting period for a material misrepresentation
- **When** the notice is generated
- **Then** the specific reason is stated in the notice, not a general reference to guidelines
- **And** the insured's right to file a DOI complaint is included
