# Require Tenant Insurance

A credit and an underwriting condition tied to the landlord collecting
renters policies from each tenant, with the landlord named as an
additional interested party.

## Credit is removed when the tenant policy lapses @v1 [published]

- **Given** a landlord policy carrying the tenant-insurance credit
- **When** notice is received that the renters policy cancelled on August 22
- **Then** the credit is removed effective August 22
- **And** an additional premium is billed pro-rata for the balance of the term

## Expired certificate is treated as no coverage @v1 [proposed]

- **Given** a certificate of insurance whose policy period ended 2026-03-31
- **When** the certificate is reviewed at renewal
- **Then** the certificate is rejected as expired
- **And** the landlord has 30 days to supply a current declarations page before the credit is removed

## Landlord is added as an interested party on the renters policy @v1 [published]

- **Given** a tenant binds a renters policy naming the dwelling address
- **When** the landlord is added as an additional interested party
- **Then** the landlord receives notice of any cancellation or non-renewal of the renters policy
- **And** the notice obligation is recorded on the landlord's file

## Lease without an insurance clause blocks the credit @v1 [proposed]

- **Given** a lease that does not require the tenant to maintain renters insurance
- **When** the landlord requests the credit
- **Then** the credit is not available for that unit
- **And** the landlord is given model lease language to use at the next renewal

## Partial compliance on a multi-unit dwelling prorates the credit @v1 [proposed]

- **Given** a four-unit dwelling with verified renters policies on two of the four units
- **When** the credit is computed
- **Then** the credit is applied at half of the full 5%
- **And** the compliance percentage is shown on the declarations page

## Verified tenant policy earns a premium credit @v1 [published]

- **Given** a DP-3 covering one leased single-family dwelling
- **When** the landlord files a renters declarations page for the current tenant with at least $100,000 liability
- **Then** a 5% tenant-insurance credit is applied to the landlord policy
- **And** the credit is effective from the date the declarations page is received
