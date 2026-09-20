# Link Household Policies

Associates policies held by members of the same household so multi-policy
discounts, consolidated billing, and household-level service all work off
one view.

## Discount applies only while both policies stay in force @v1 [published]

- **Given** a linked household receiving a 12% multi-policy discount on the auto policy
- **When** the homeowners policy cancels mid-term
- **Then** the discount is removed from the auto policy at its next renewal, not immediately
- **And** the insured is notified of the premium change with the renewal offer

## Divorce or separation splits the household @v1 [published]

- **Given** a linked household whose named insureds report separate residences
- **When** the split is processed
- **Then** each policy is assigned to its own household with its own mailing address
- **And** consolidated billing is dissolved and separate statements begin the next cycle

## Household link requires a verified shared address @v1 [proposed]

- **Given** two policies with similar names but addresses in different counties
- **When** a link is proposed by the matching job
- **Then** the link is held as a suggestion rather than applied automatically
- **And** a representative must confirm the relationship before the link takes effect

## Link auto and homeowners at a shared address @v1 [published]

- **Given** an auto policy and a homeowners policy sharing a residence address and a named insured surname
- **When** the household link is created
- **Then** both policies appear under one household view
- **And** the multi-policy discount is evaluated at the next renewal of each policy

## Linking does not merge the underlying accounts @v1 [proposed]

- **Given** two distinct customer accounts linked as one household
- **When** a representative views the household
- **Then** each account retains its own customer number, claims history, and credit profile
- **And** a merge must be requested separately (merge-duplicate-accounts.feature.md)

## Renters and auto qualify for a reduced companion discount @v1 [proposed]

- **Given** a renters policy and an auto policy for the same insured at one address
- **When** the household link is created
- **Then** a 5% companion discount is applied rather than the 12% homeowners multi-policy discount
- **And** the applied discount code is shown on the declarations page
