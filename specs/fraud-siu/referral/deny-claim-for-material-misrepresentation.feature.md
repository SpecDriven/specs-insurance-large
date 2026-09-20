# Deny a Claim for Material Misrepresentation

A knowing misstatement that is material to the risk or the loss supports
denial and, in some cases, rescission of the policy
(compliance/state-mandates/apply-state-cancellation-rules.feature.md).

**Assigned:** Dana Whitfield

## Concealed garaging address supports denial @v1 [published]

- **Given** an application stating a rural garaging ZIP code while the vehicle was garaged in an urban territory
- **And** the correct territory would have produced a 34% higher premium
- **When** the misrepresentation is confirmed during claim investigation
- **Then** the claim is denied for material misrepresentation
- **And** the denial letter cites the concealment provision of the policy form

## Contestability period has expired on a misstatement @v1 [proposed]

- **Given** a misstatement made at application on a policy in force for 4 years
- **And** the state limits rescission to misstatements discovered within 2 years absent intentional fraud
- **When** the file is evaluated
- **Then** rescission is unavailable
- **And** the claim is adjusted on its merits under the issued coverage

## Denial letter meets unfair claims practice requirements @v1 [proposed]

- **Given** an approved denial
- **When** the letter is issued
- **Then** it states the specific policy provision relied on and the facts supporting it
- **And** it includes the state Department of Insurance complaint contact information

## Denial requires supervisory and coverage counsel sign-off @v1 [published]

- **Given** a recommended denial for material misrepresentation on a $140,000 fire loss
- **When** the recommendation is submitted
- **Then** an SIU manager and coverage counsel must both approve before issuance
- **And** the approvals are recorded in the audit trail (compliance/audit/maintain-audit-trail.feature.md)

## Immaterial inaccuracy does not support denial @v1 [published]

- **Given** an application understating annual mileage by 900 miles with no premium effect
- **When** the discrepancy is found
- **Then** the claim is not denied on that ground
- **And** the mileage is corrected by endorsement at renewal

## Inflated loss inventory reduces the payable amount @v1 [proposed]

- **Given** a personal property claim listing items the insured never owned
- **When** the fabricated items are identified
- **Then** the claim is denied in full under the fraud condition
- **And** the SIU file is referred to the state fraud bureau (refer-to-state-fraud-bureau.feature.md)
