# Cover Business Interruption

Business income and extra expense coverage on form CP 00 30. The coverage
responds to loss of net income and continuing expenses during the period of
restoration following a covered direct physical loss.

**Assigned:** Dana Whitfield

## 72-hour waiting period must elapse @v1 [published]

- **Given** a business income form with a 72-hour waiting period
- **When** a covered loss suspends operations for 60 hours
- **Then** no business income is payable
- **And** the denial letter cites the waiting period condition

## Business income paid during the period of restoration @v1 [published]

- **Given** a covered fire suspends operations at a machine shop on March 4
- **And** repairs are completed and operations resume on June 12
- **When** the business income claim is settled
- **Then** lost net income and continuing normal operating expenses are paid for the 100-day period
- **And** payroll continuing under the ordinary payroll provision is included

## Civil authority coverage is limited to four consecutive weeks @v1 [published]

- **Given** a covered windstorm damages a neighboring property
- **And** a county order bars access to the insured premises for 38 days
- **When** civil authority coverage is applied
- **Then** business income is paid for 28 consecutive days beginning 72 hours after the order

## Dependent property coverage responds to a supplier loss @v1 [proposed]

- **Given** a scheduled dependent property supplying 70% of the insured's components
- **When** a tornado halts that supplier for five weeks
- **Then** contingent business income is paid subject to the $250,000 sublimit

## Extra expense avoids a longer shutdown @v1 [published]

- **Given** an insured rents temporary space for $9,500 per month after a covered roof collapse
- **When** the expense reduces the business income loss by $31,000
- **Then** the extra expense is reimbursed
- **And** the reimbursement is capped at the amount of business income loss avoided

## Period of restoration ends at the theoretical repair date @v1 [proposed]

- **Given** repairs that should reasonably have taken 90 days
- **And** the insured delays rebuilding and reopens after 150 days
- **When** the claim is settled
- **Then** business income is paid for 90 days only
- **And** the adjuster documents the basis for the theoretical restoration period
