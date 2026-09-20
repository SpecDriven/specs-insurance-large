# Bind Boat Policy

Turning an accepted boat quote (quote-boat-policy.feature.md) into an
in-force watercraft policy, including survey conditions and lienholder
notices.

## Bind a boat policy with an agreed hull value @v1 [published]

- **Given** an accepted quote for a 24-foot bowrider with a $58,000 agreed hull value
- **When** the applicant pays the annual premium in full
- **Then** the policy is issued with an agreed-value hull settlement basis
- **And** the declarations page lists the navigation territory and lay-up period

## Bind is conditional on a marine survey @v1 [published]

- **Given** a 1998 hull older than 25 years at the requested effective date
- **When** the policy is bound
- **Then** coverage is bound subject to a satisfactory out-of-water survey within 45 days
- **And** the policy is flagged for cancellation if the survey is not received

## Effective date set before the vessel purchase closes @v1 [proposed]

- **Given** a purchase agreement with a closing date of July 8
- **When** the applicant requests a July 1 effective date
- **Then** the bind is refused for lack of insurable interest
- **And** the earliest permitted effective date of July 8 is returned

## Lienholder recorded as loss payee @v1 [published]

- **Given** a marine lender holds a $41,000 note on the vessel
- **When** the policy is bound
- **Then** the lender is added as loss payee on the hull coverage
- **And** evidence of insurance is transmitted to the lender within 2 business days

## Named storm binding suspension @v1 [proposed]

- **Given** a named tropical storm with a watch posted for the mooring county
- **When** a bind request is submitted for a vessel moored in that county
- **Then** the bind is refused until the watch is lifted
- **And** the refusal cites the hurricane binding suspension rule

## Operator without a boater safety certificate @v1 [published]

- **Given** a state requiring a boater education card for operators born after 1988
- **When** the named operator cannot produce a certificate at bind
- **Then** the bind is held and the agent is asked to upload the certificate
- **And** the quote remains valid for 10 additional days
