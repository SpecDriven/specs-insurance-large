# Update Mailing Address

Changes where documents and refunds are sent. A change of the residence
or garaging address is a rating event and is handled as an endorsement
(policy/auto-policy/endorse-policy.feature.md).

## Address change refreshes pending outbound mail @v1 [proposed]

- **Given** an invoice and a renewal offer queued for print tonight
- **When** the mailing address changes before the print cutoff
- **Then** both documents are regenerated with the new address
- **And** documents already in the mail stream are reissued to the new address

## Address standardization corrects the submitted entry @v1 [proposed]

- **Given** an insured who enters "418 Weller Av, Colubmus OH"
- **When** the address is validated
- **Then** the standardized form "418 Weller Ave, Columbus, OH 43206-1174" is proposed
- **And** the insured may accept the correction or override it with a reason

## Garaging address change triggers a re-rate @v1 [published]

- **Given** an auto policy moving from Columbus, Ohio to Louisville, Kentucky
- **When** the address change is submitted
- **Then** an endorsement is created to re-rate the territory and apply Kentucky forms
- **And** the mailing address alone is not sufficient to complete the move

## Mailing address change with no rating impact @v1 [published]

- **Given** an insured whose garaging address is unchanged
- **When** a new mailing address is recorded
- **Then** the change takes effect immediately with no premium adjustment
- **And** a confirmation is sent to both the old and the new address

## Out-of-state move outside the carrier's footprint @v1 [proposed]

- **Given** an insured relocating to a state where Acme is not admitted
- **When** the address change is submitted
- **Then** the policy is flagged for non-renewal at the end of the current term
- **And** the insured is given referral information at least 45 days before expiry

## PO box is refused as a residence address @v1 [published]

- **Given** an insured who submits a PO box for the residence address
- **When** the address is validated
- **Then** the entry is refused for the residence field
- **And** the PO box is accepted for the mailing address only
