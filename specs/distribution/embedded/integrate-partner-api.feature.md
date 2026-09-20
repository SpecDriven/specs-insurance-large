# Integrate a Distribution Partner API

Onboarding a distribution partner covers credentials, rate limits,
certification in a sandbox, and the licensing arrangement that lets the
partner present coverage at all.

## Credential rotation happens without downtime @v1 [published]

- **Given** a partner with an active API key nearing its 12-month age
- **When** a replacement key is issued
- **Then** both keys are accepted for a 14-day overlap window
- **And** the old key stops working when the window closes

## Partner is certified in the sandbox before production access @v1 [published]

- **Given** a partner that has completed the integration test suite in the sandbox
- **When** the integration manager reviews the certification results
- **Then** production credentials are issued scoped to renters and personal auto
- **And** the partner's first 30 days are monitored at a reduced rate limit

## Partner must hold or borrow a licensed entity @v1 [proposed]

- **Given** a partner that is not itself a licensed insurance producer
- **When** the partner requests production access
- **Then** access is granted only under a named licensed agency of record
- **And** the licensed agency is recorded as the producer on every resulting policy

## Rate limiting protects the quoting service @v1 [published]

- **Given** a partner provisioned at 120 quote requests per minute
- **When** the partner exceeds that rate
- **Then** excess requests receive a throttled response with a retry-after value
- **And** sustained throttling for 15 minutes opens an integration incident

## Schema change is versioned rather than breaking @v1 [published]

- **Given** partners integrated against version 2 of the quote endpoint
- **When** a new required field is introduced
- **Then** the change is published as version 3 and version 2 continues to serve
- **And** version 2 is retired no sooner than 12 months after version 3 is available

## Suspended partner stops receiving offers @v1 [proposed]

- **Given** a partner suspended for presenting coverage without the required disclosures
- **When** the partner calls the quote endpoint
- **Then** a suspension response is returned in place of any offer
- **And** in-force policies sourced from the partner are unaffected
