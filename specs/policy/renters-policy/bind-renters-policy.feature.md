# Bind Renters Policy

Converting an accepted HO-4 quote into an in-force policy, issuing the
declarations page, and notifying interested parties.

**Assigned:** Aisha Bello

## Backdating beyond seven days is refused @v1 [published]

- **Given** an applicant requests an effective date 14 days in the past
- **When** the bind request is submitted
- **Then** the bind is refused with reason "effective date exceeds backdating authority"
- **And** the earliest permitted effective date is returned to the agent

## Bind a renters quote with same-day effective date @v1 [published]

- **Given** an unexpired renters quote and a completed application
- **When** the applicant pays the first installment and requests a 5:00 PM effective date
- **Then** the policy is issued with an effective date of today at 5:00 PM local time
- **And** the declarations page and HO-4 form are delivered electronically
- **And** the first billing installment is handed off to billing (billing/collect-premium.feature.md)

## Bind during a wildfire moratorium is blocked @v1 [proposed]

- **Given** the unit's ZIP code falls under an active binding moratorium
- **When** the agent attempts to bind
- **Then** the bind is blocked and routed to underwriting
- **And** the moratorium identifier and expected lift date are shown to the agent

## Duplicate bind attempt on the same quote @v1 [proposed]

- **Given** a quote that was already bound as policy HO4-4471902
- **When** a second bind request arrives for the same quote number
- **Then** the second request is rejected as a duplicate
- **And** the existing policy number is returned instead of creating a new policy

## Landlord added as an interested party @v1 [published]

- **Given** a lease requiring proof of $100,000 personal liability
- **When** the policy is bound with the landlord listed as an interested party
- **Then** a certificate of insurance naming the landlord is generated
- **And** the landlord receives notice of any future cancellation or non-renewal

## Payment declined leaves the policy unbound @v1 [proposed]

- **Given** a bind request paired with a card that is declined for insufficient funds
- **When** the payment authorization fails
- **Then** no policy number is issued
- **And** the quote remains open for its remaining validity period
