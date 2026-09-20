# Apply Experience Modifier

The experience modification factor compares an employer's actual losses to
expected losses for its classifications. It is promulgated by the rating
bureau and applied to manual premium.

## Contested mod suspends the debit pending appeal @v1 [proposed]

- **Given** an insured appealing a 1.52 modifier on grounds of misreported claim values
- **When** the bureau acknowledges the dispute
- **Then** premium is billed at the prior modifier of 1.11 pending resolution
- **And** the difference is trued up when the appeal is decided

## Credit mod reduces manual premium @v1 [published]

- **Given** a bureau-issued experience modifier of 0.84 effective July 1
- **And** manual premium of $46,500
- **When** the policy is rated
- **Then** modified premium of $39,060 is developed
- **And** the modifier and its effective date appear on the information page

## Debit mod above 1.25 triggers a loss control visit @v1 [published]

- **Given** an experience modifier of 1.38
- **When** the policy is bound
- **Then** a loss control survey is scheduled within 60 days
- **And** the survey findings are attached to the underwriting file

## Employer with insufficient payroll is unrated @v1 [proposed]

- **Given** an employer whose expected losses fall below the state eligibility threshold
- **When** the modifier is requested from the bureau
- **Then** no modifier is promulgated
- **And** the policy is rated at unity

## Ownership change requires a combination of experience @v1 [proposed]

- **Given** an insured that acquired a majority interest in a second entity on September 1
- **When** the ownership change is reported to the bureau
- **Then** the experience of both entities is combined into a single modifier
- **And** the combined modifier applies from the next anniversary rating date

## Revised mod is applied retroactively to the anniversary date @v1 [published]

- **Given** a policy rated at a 1.06 modifier effective March 1
- **When** the bureau issues a revised modifier of 0.97 on June 14
- **Then** the policy is re-rated from March 1
- **And** return premium is issued for the difference
