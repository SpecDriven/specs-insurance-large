# Rate General Liability by Class Code

Each described operation is assigned an ISO class code with its own rate
and exposure basis. The classification chosen at quote is verified at audit
(audit-exposure-basis.feature.md).

## Ambiguous operations description is returned to the agent @v1 [published]

- **Given** an operations description reading "general services and installations"
- **When** the classification engine cannot resolve a single code with confidence
- **Then** the submission is returned to the agent
- **And** the agent is shown the three closest candidate class codes

## Assign a single class code from the described operations @v1 [published]

- **Given** an applicant describes operations as "office - clerical"
- **When** the classification is resolved
- **Then** class code 61226 is assigned with an area exposure basis
- **And** the rate per 1,000 square feet is applied

## Class code change at renewal is flagged to the insured @v1 [proposed]

- **Given** a policy rated on class code 91340 for the expiring term
- **And** the audit reclassified the operations to 91342
- **When** the renewal is prepared
- **Then** the new class code and its rate impact are disclosed on the renewal offer (policy/auto-policy/renew-policy.feature.md)

## Incidental operations under 10% are absorbed into the governing class @v1 [proposed]

- **Given** a print shop whose delivery operation represents 6% of total receipts
- **When** the classification is resolved
- **Then** the delivery operation is absorbed into the governing printing class
- **And** no separate exposure is developed

## Multiple operations are rated as separate classifications @v1 [published]

- **Given** a business with a retail showroom and an on-site fabrication shop
- **When** the classification is resolved
- **Then** two class codes are assigned with separate exposure bases
- **And** each classification is shown as its own line on the premium worksheet

## Prohibited class code blocks issuance @v1 [published]

- **Given** a resolved class code appearing on the prohibited class list
- **When** the agent attempts to bind
- **Then** binding is blocked
- **And** the block reason and class code are written to the underwriting file
