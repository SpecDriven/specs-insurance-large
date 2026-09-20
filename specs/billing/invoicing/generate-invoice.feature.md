# Generate Premium Invoice

Produces the billing statement that follows a newly bound or renewed
policy (policy/auto-policy/bind-policy.feature.md). The invoice carries
the written premium, any policy fees, and the installment due dates.

**Assigned:** Priya Raman

## Invoice a bound policy paid in full @v1 [published]

- **Given** a bound personal auto policy with $1,248 written premium and a $25 policy fee
- **And** the first named insured selected the paid-in-full plan
- **When** the billing cycle runs on the policy effective date
- **Then** a single invoice for $1,273 is generated with a due date 20 days out
- **And** the declarations page and invoice are delivered by the insured's elected delivery method

## Invoice issued before the effective date @v1 [published]

- **Given** a homeowners policy bound 45 days ahead of its June 1 effective date
- **When** the invoicing job runs
- **Then** the invoice is generated 30 days before the effective date, not at bind
- **And** the due date is set to the effective date

## Invoice reflects a pending cancellation @v1 [proposed]

- **Given** a policy under a pending cancellation for nonpayment effective in 8 days
- **When** the next installment invoice would normally generate
- **Then** the invoice is withheld
- **And** the account shows the cancellation notice amount as the only payable item

## Mortgagee-billed policy suppresses the insured invoice @v1 [published]

- **Given** a homeowners policy escrow-billed to Third Coast Mortgage
- **When** the annual invoice is generated
- **Then** the invoice is addressed to the mortgagee at the loss payee address of record
- **And** the named insured receives an informational copy marked "Do Not Pay"

## Reissue an invoice after an address correction @v1 [published]

- **Given** an invoice returned as undeliverable by the postal vendor
- **And** the named insured supplies a corrected mailing address (customer/accounts/update-mailing-address.feature.md)
- **When** the service representative requests a reissue
- **Then** a replacement invoice is generated with the original due date preserved
- **And** the undeliverable flag is cleared from the account

## Rounding across installments preserves the total @v1 [proposed]

- **Given** a $1,000 premium split across 3 installments
- **When** the installment invoices are generated
- **Then** the first two installments are $333.33 and the final installment absorbs the $0.01 remainder
- **And** the sum of all installments equals the written premium exactly

## Suppress an invoice below the minimum billable amount @v1 [proposed]

- **Given** an account with an outstanding balance of $1.75 after an endorsement credit
- **When** the invoicing job evaluates the account
- **Then** no invoice is generated
- **And** the balance is carried to the next scheduled invoice
