# Coordinate Mortgagee on Claim Payment

The mortgagee named on the declarations page holds an insurable interest in
the dwelling and must be named on dwelling payments above the carrier's
threshold (issue-claim-payment.feature.md).

## Contents and additional living expense exclude the mortgagee @v1 [published]

- **Given** a total fire loss with dwelling, contents, and additional living expense payments
- **When** the contents and additional living expense drafts are issued
- **Then** the mortgagee is not named because its interest attaches only to the dwelling
- **And** the dwelling draft is issued jointly in the same payment batch

## Mortgagee claims payment after the insured's coverage is void @v1 [proposed]

- **Given** a dwelling claim denied for the insured's intentional act
- **When** the mortgagee asserts its rights under the standard mortgage clause
- **Then** the mortgagee's interest is paid despite the denial as to the insured
- **And** the carrier takes an assignment of the mortgage to the extent of the payment

## Mortgagee holds funds in escrow for the rebuild @v1 [proposed]

- **Given** a jointly issued draft of $184,000 endorsed into a lender-controlled escrow
- **When** the contractor completes the first construction milestone
- **Then** the lender disburses against its own inspection schedule, not the carrier's
- **And** the carrier confirms the escrow arrangement to the insured in writing

## Mortgagee named on a dwelling payment @v1 [published]

- **Given** a mortgagee listed in the mortgagee clause and a Coverage A settlement of $62,000
- **When** the dwelling payment is released
- **Then** the draft is issued payable jointly to the named insured and the mortgagee
- **And** the mortgagee's loan number is printed on the draft for endorsement routing

## Mortgagee of record is stale after a loan sale @v1 [proposed]

- **Given** a mortgagee clause naming a servicer that sold the loan six months before the loss
- **When** the payee is verified before release
- **Then** payment is held until the current servicer and loan number are confirmed in writing
- **And** the policy mortgagee clause is updated by endorsement (policy/auto-policy/endorse-policy.feature.md)

## Small dwelling loss below the mortgagee threshold @v1 [published]

- **Given** a carrier threshold of $10,000 for naming the mortgagee
- **When** a dwelling payment of $6,400 is released
- **Then** the draft is issued to the named insured alone
- **And** the threshold applied is recorded on the payment record
