# Manage Rental Reimbursement

**Assigned:** Miguel Santos

Rental and transportation expenses under the optional rental reimbursement
endorsement, plus loss-of-use owed to a third party under liability.

## Loss of use owed to a not-at-fault claimant @v1 [proposed]

- **Given** liability has been accepted for an Acme insured at 100% fault
- **When** the third-party claimant's vehicle is in the shop for 9 days
- **Then** loss of use is paid under bodily injury and property damage liability, not the rental endorsement
- **And** the claimant's rental class is matched to the damaged vehicle class

## No rental coverage purchased on the policy @v1 [published]

- **Given** a declarations page with no rental reimbursement endorsement
- **When** the insured requests a rental vehicle after a covered collision
- **Then** the request is declined as not covered
- **And** the insured is offered the carrier's negotiated retail rental discount at their own expense

## Rental billed after the vehicle was returned @v1 [proposed]

- **Given** a rental authorization that ended on March 14
- **When** the agency invoices for rental days through March 19
- **Then** the days past the authorization end date are rejected
- **And** the agency is sent a remittance advice explaining the rejected days

## Rental continues through a total loss evaluation @v1 [proposed]

- **Given** a vehicle placed in total loss evaluation rather than repair
- **When** the total loss offer is delivered to the insured
- **Then** rental is authorized for 3 additional calendar days after the offer date
- **And** the insured is told in writing the exact date rental coverage ends

## Rental days exhausted before repairs complete @v1 [published]

- **Given** an insured who has used 30 rental days against a $1,200 aggregate cap
- **When** the shop requests a further extension
- **Then** the rental authorization is closed at the cap
- **And** the insured is notified in writing three days before the cap is reached

## Rental starts when the vehicle enters the shop @v1 [published]

- **Given** an insured with the rental reimbursement endorsement at $40 per day and a $1,200 cap
- **When** the vehicle is dropped at a direct-repair shop and repairs begin
- **Then** a rental authorization is issued to the partner rental agency
- **And** the authorized daily rate is capped at $40 with any excess billed to the insured
- **And** the authorization end date is set to the shop's estimated completion date
