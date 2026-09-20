# Apply Wind and Hail Deductible

A separate percentage deductible for wind and hail losses in exposed
territories, applied instead of the all-other-perils deductible when the
cause of loss is wind or hail.

**Assigned:** Aisha Bello

## All-other-perils deductible governs a non-wind loss @v1 [published]

- **Given** a policy with a $1,000 all-other-perils deductible and a 2% wind and hail deductible
- **When** a kitchen fire loss is adjusted
- **Then** the $1,000 deductible is applied
- **And** the percentage deductible is not invoked

## Coastal county mandates a minimum 5% deductible @v1 [published]

- **Given** a dwelling in a first-tier coastal county in South Carolina
- **When** the policy is rated
- **Then** the wind and hail deductible is set to no less than 5% of Coverage A
- **And** a lower deductible cannot be selected at bind or by endorsement

## Deductible disclosure is required at every renewal @v1 [published]

- **Given** a renewing policy carrying a percentage wind and hail deductible
- **When** the renewal declarations page is produced
- **Then** the deductible is stated both as a percentage and as a dollar amount
- **And** a plain-language disclosure notice accompanies the renewal offer

## Named storm deductible supersedes the wind and hail deductible @v1 [proposed]

- **Given** a loss occurring while a named hurricane warning is in effect for the risk county
- **When** the claim is adjusted
- **Then** the named storm deductible of 5% is applied rather than the 2% wind and hail deductible
- **And** the applicable deductible is stated in the claim reserve worksheet

## Percentage deductible is calculated from Coverage A @v1 [published]

- **Given** a dwelling with Coverage A of $425,000 and a 2% wind and hail deductible
- **When** a hail loss of $31,400 is adjusted
- **Then** the deductible applied is $8,500
- **And** the net indemnity is $22,900

## Single deductible applies across one storm event @v1 [proposed]

- **Given** two separate hail losses to the dwelling and a detached garage on the same date
- **When** both are attributed to a single catastrophe event code
- **Then** one wind and hail deductible is applied to the combined loss
- **And** the deductible is allocated between Coverage A and Coverage B pro-rata
