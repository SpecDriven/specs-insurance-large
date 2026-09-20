# Flag Application Misrepresentation

Comparing loss facts and third-party data against what the applicant
represented when the policy was written
(policy/auto-policy/quote-policy.feature.md).

## Flag is cleared by supporting documentation @v1 [proposed]

- **Given** an undisclosed driver flag on a policy
- **When** the insured produces a lease and utility bills showing the driver resides at a separate address
- **Then** the flag is cleared with the documentation attached
- **And** the policy is left unchanged with a note explaining the resolution

## Garaging address does not match the risk location @v1 [published]

- **Given** an application listing a garaging ZIP code in Boise, Idaho
- **When** telematics and the last four losses place the vehicle in Los Angeles County
- **Then** a rate evasion flag is raised
- **And** the premium differential since inception is calculated for underwriting

## Prior loss history omitted from the application @v1 [published]

- **Given** an applicant who answered "no" to prior losses in the past 5 years
- **When** the CLUE report returns two paid comprehensive claims within that period
- **Then** the omission is flagged as a potential misrepresentation
- **And** the applicant's signed application page is retrieved and attached

## Prior loss history omitted from the application @v2 [proposed]

Adds a premium-impact materiality test to v1.

- **Given** an applicant who answered "no" to prior losses in the past 5 years
- **When** the CLUE report returns two paid comprehensive claims within that period
- **Then** the rerated premium from inception is calculated against the premium charged
- **And** the omission is flagged as material only when the differential exceeds 10%
- **And** the applicant's signed application page is retrieved and attached

## Rescission is limited by the contestability window @v1 [proposed]

- **Given** a policy in force for 31 months in a state with a two-year contestability period
- **When** a material misrepresentation is discovered
- **Then** rescission is not available and the finding is limited to non-renewal
- **And** the claim is adjusted on its merits

## Undisclosed household driver surfaces at the loss @v1 [published]

- **Given** an application listing two rated drivers
- **When** a claim is reported with a 19-year-old resident son operating the vehicle
- **Then** a material misrepresentation flag is raised on the policy
- **And** underwriting is notified to evaluate rerating or rescission
