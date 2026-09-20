# Manage Multi-State Coverage

Item 3.A of the information page lists states where coverage applies from
inception. Item 3.C lists states where other states insurance responds to
incidental operations.

## Adding a state mid-term requires a filed rate @v1 [proposed]

- **Given** a request to add Louisiana effective November 1
- **When** the endorsement is prepared
- **Then** the state is added only if Acme holds a filed rate and a license in Louisiana
- **And** otherwise the agent is told to place the exposure with a licensed carrier

## Extraterritorial reciprocity governs a short out-of-state assignment @v1 [proposed]

- **Given** an Illinois employee temporarily assigned to a Wisconsin job site for 21 days
- **When** an injury occurs in Wisconsin
- **Then** benefits are paid under Illinois law under extraterritorial reciprocity
- **And** the jurisdiction determination is documented in the claim file

## List a second state in item 3.A @v1 [published]

- **Given** an insured with payroll in Missouri and Kansas
- **When** the policy is issued
- **Then** both states are listed in item 3.A
- **And** payroll and rates are developed separately for each state

## Monopolistic state is excluded from the policy @v1 [published]

- **Given** an insured expanding operations into Ohio
- **When** the agent attempts to add Ohio to item 3.A
- **Then** the addition is refused
- **And** the agent is directed to the Ohio state fund and offered a stop gap employers liability endorsement

## Other states insurance covers an incidental operation @v1 [published]

- **Given** Nebraska listed in item 3.C but not 3.A
- **When** an employee is injured on a two-day job in Nebraska
- **Then** the claim is covered under other states insurance
- **And** the insured is instructed to report the new state exposure immediately

## Payroll reported in an unlisted state triggers an endorsement @v1 [published]

- **Given** an audit showing $240,000 of payroll in Arkansas, which is not on the information page
- **When** the audit is posted
- **Then** Arkansas is added to item 3.A retroactive to the date the operations began
- **And** additional premium is charged at Arkansas rates
