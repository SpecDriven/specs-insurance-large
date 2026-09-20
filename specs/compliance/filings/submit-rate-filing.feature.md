# Submit a Rate Filing

Acme files rates, rules, and forms with each state Department of Insurance
through SERFF before they may be used. A filing bundles the actuarial
memorandum, the rate pages, and any supporting exhibits.

**Assigned:** Priya Raman

## Countrywide loss trend is carried on every state filing @v1 [proposed]

- **Given** an approved countrywide loss trend of 4.2% annually for bodily injury
- **When** a state rate filing is generated
- **Then** the trend selection and its support exhibit are included in each state package
- **And** any state-specific deviation from the countrywide trend is documented in the memorandum

## Filing fee is calculated per jurisdiction @v1 [published]

- **Given** a multi-state rate and rule filing
- **When** the filing package is priced
- **Then** a filing fee is computed for each jurisdiction in the package

| state    | filing type    | fee   |
| -------- | -------------- | ----- |
| Ohio     | Rate           | $150  |
| Texas    | Rate and rule  | $100  |
| Florida  | Rate           | $250  |
| New York | Form and rate  | $500  |

## Missing actuarial support blocks submission @v1 [published]

- **Given** a rate filing with no loss-cost multiplier exhibit attached
- **When** the product manager attempts to submit
- **Then** submission is rejected with the error "required exhibit LCM-1 is missing"
- **And** the filing remains in draft status

## Prior-approval state filing is assembled and transmitted @v1 [published]

- **Given** a personal auto rate revision with a statewide average change of +6.4% for Ohio
- **And** Ohio is a prior-approval jurisdiction for personal auto
- **When** the product manager submits the filing
- **Then** a SERFF tracking number is issued and stored on the filing record
- **And** the actuarial memorandum, rate pages, and ISO form PP 00 01 references are attached
- **And** the proposed effective date is set at least 60 days after submission

## Statewide change above the flex band requires a full rate hearing @v1 [published]

- **Given** a California personal auto filing with a statewide average change of +7.1%
- **And** the state's intervenor threshold for a hearing is +7.0%
- **When** the filing is submitted
- **Then** the filing is flagged as hearing-eligible
- **And** outside regulatory counsel is added as a required reviewer

## Use-and-file state allows an earlier effective date @v1 [published]

- **Given** a homeowners rule change for Texas, a use-and-file jurisdiction
- **When** the filing is submitted with an effective date 15 days out
- **Then** the filing is accepted for informational review
- **And** the rates may be used on new business as of the effective date

## Withdraw a filing before disposition @v1 [proposed]

- **Given** a filing in "pending review" status with the Florida OIR
- **When** the product manager withdraws the filing
- **Then** a withdrawal request is transmitted through SERFF
- **And** the filing is closed with disposition "withdrawn"
- **And** any dependent implementation task is cancelled (implement-approved-rates.feature.md)
