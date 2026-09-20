# Apply Protective Safeguard Warranties

Form CP 04 11 makes coverage conditional on the insured maintaining stated
protective systems. Impairment without notice suspends coverage for the
related peril.

## Alarm line cut by a burglar does not void coverage @v1 [proposed]

- **Given** a P-4 alarm warranty in force
- **When** a burglar severs the alarm line during the theft
- **Then** coverage is not suspended
- **And** the claim proceeds with an SIU referral to confirm the line was cut from outside

## Central station alarm warranty for a jewelry risk @v1 [proposed]

- **Given** a jeweler's block location with a UL-certificated central station burglar alarm
- **When** the P-4 warranty is attached
- **Then** theft coverage is conditioned on the alarm being in service whenever the premises is closed

## Failed inspection removes the safeguard credit at renewal @v1 [published]

- **Given** an annual sprinkler inspection reporting 6 corroded heads and a failed flow test
- **When** the policy is renewed
- **Then** the sprinkler credit is removed
- **And** the insured is given 60 days to submit a passing inspection to have the credit restored

## Known sprinkler impairment suspends fire coverage @v1 [published]

- **Given** a P-1 sprinkler warranty on the policy
- **And** the insured shut down the system for pipe replacement without notifying Acme
- **When** a fire loss occurs during the impairment
- **Then** the fire loss is not covered
- **And** the denial cites the protective safeguards condition

## Reported impairment preserves coverage during repairs @v1 [published]

- **Given** an insured who notifies Acme of a planned 5-day sprinkler shutdown
- **When** the underwriter grants a written impairment permit with a fire watch requirement
- **Then** coverage continues for the permitted period
- **And** the permit expires automatically on the stated end date

## Sprinkler credit applied when a wet system is warranted @v1 [published]

- **Given** a location with a fully sprinklered wet pipe system rated by a certified inspector
- **When** the protective safeguards endorsement is attached with symbol P-1
- **Then** a 22% sprinkler credit is applied to the fire rate
- **And** the warranty is listed on the declarations page
