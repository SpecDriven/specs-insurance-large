# Handle Uninsured Motorist Claim

Uninsured and underinsured motorist coverage responds when the at-fault
driver carries no liability insurance or limits too low to make the insured
whole.

## Adverse carrier confirms no coverage in force @v1 [published]

- **Given** an at-fault driver whose policy had cancelled two weeks before the loss
- **When** the adverse carrier issues a written coverage denial
- **Then** the claim converts to an uninsured motorist bodily injury claim
- **And** the insured's UM limits from the declarations page are applied
- **And** the UM deductible, if any, is applied to the property damage portion only

## Consent to settle withheld to preserve subrogation @v1 [published]

- **Given** the insured intends to sign a release with the adverse carrier
- **When** the insured requests consent to settle under the UIM condition
- **Then** Acme has 30 days to consent or to advance the tendered amount and preserve its subrogation rights
- **And** a written response is issued before the 30th day

## Hit-and-run with no physical contact @v1 [proposed]

- **Given** an insured forced off the road by an unidentified vehicle with no contact
- **When** the UM claim is evaluated in a state requiring corroboration
- **Then** independent corroboration of the phantom vehicle is required (determine-fault.feature.md)
- **And** the claim is denied if no corroboration is produced within 60 days

## Rejection of UM coverage on file @v1 [proposed]

- **Given** a signed statutory UM rejection form retained in the policy file
- **When** the insured asserts a UM claim after an uninsured loss
- **Then** the claim is denied and the executed rejection form is attached to the denial letter
- **And** the underwriting file is audited to confirm the form meets the state's signature requirements

## Stacking across multiple vehicles on one policy @v1 [proposed]

- **Given** a policy in a stacking state listing three vehicles with 100/300 UM limits each
- **When** the insured asserts a UM claim after a single accident
- **Then** the available UM limit is stacked to 300/900
- **And** the stacked limit and the premium charged per vehicle are documented in the evaluation

## Underinsured motorist fills the gap above the tortfeasor limit @v1 [published]

- **Given** an adverse driver with 25/50 limits and an insured with 250/500 UIM limits
- **When** damages are valued at $120,000 and the adverse carrier tenders its $25,000 limit
- **Then** the UIM exposure is evaluated at $95,000 on an excess basis
- **And** the tortfeasor tender is credited against the UIM valuation
