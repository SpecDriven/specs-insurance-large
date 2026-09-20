# Cap Renewal Rate Increase

Capping limits the renewal premium change any single policy sees while a
rate revision works through the book. The cap is a transitional credit or
debit that unwinds over successive renewals until the policy reaches rate.

## Cap a renewal increase at twenty percent @v1 [published]

- **Given** a renewing auto policy whose uncapped premium rises from $640 to $832
- **And** a filed capping rule limiting renewal increases to 20%
- **When** the renewal offer is rated (policy/auto-policy/renew-policy.feature.md)
- **Then** the offered premium is $768
- **And** a capping credit of $64 is shown on the declarations page as a transitional adjustment

## Cap floor prevents an endless unwind @v1 [proposed]

- **Given** a policy that has carried a capping credit for three consecutive terms
- **When** the fourth renewal is rated
- **Then** the remaining credit is written off and the policy is moved to full filed rates
- **And** the write-off amount is reported on the monthly capping reconciliation

## Capping does not apply to decreases @v1 [published]

- **Given** a renewing policy whose uncapped premium falls from $910 to $700
- **When** the renewal offer is rated
- **Then** the full decrease is passed to the insured
- **And** no capping adjustment is recorded

## Mid-term endorsement is rated uncapped @v1 [published]

- **Given** a capped renewal in force
- **When** the insured adds a vehicle mid-term
- **Then** the added vehicle is rated at full filed rates with no capping applied
- **And** the existing capping credit on the other vehicles is unchanged

## Residual capping unwinds at the next renewal @v1 [published]

- **Given** a policy carrying a $64 capping credit from the prior term
- **When** the policy renews again with no further rate revision
- **Then** the remaining capping credit is released in full
- **And** the policy is recorded as at rate

## Underwriting-driven change is excluded from the cap @v1 [proposed]

- **Given** a renewal whose premium rises because an at-fault accident surcharge attaches
- **When** the capping rule is evaluated
- **Then** the surcharge portion is excluded from the capped base
- **And** only the rate revision portion of the increase is capped
