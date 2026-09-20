# Protect Nonpublic Personal Information

Acme's handling of nonpublic personal information follows the NAIC Insurance
Data Security Model Law and the Gramm-Leach-Bliley privacy notice rules.

## Annual privacy notice is delivered to every household @v1 [published]

- **Given** an active policy household as of the annual notice run date
- **When** the privacy notice batch is produced
- **Then** the notice is delivered by the household's elected channel
- **And** the delivery is recorded with its date and channel

## Claimant medical records are restricted to the handling adjuster @v1 [published]

- **Given** a bodily injury claim file containing medical bills and records
- **When** an adjuster outside the assigned unit opens the file (claims/auto-accidents/assign-adjuster.feature.md)
- **Then** the medical documents are masked
- **And** the access attempt is written to the audit log

## Exported loss run masks claimant identifiers @v1 [proposed]

- **Given** an agent requesting a five-year loss run for a commercial account
- **When** the loss run is generated
- **Then** claimant names and dates of birth are replaced with claim reference numbers
- **And** paid, reserved, and incurred amounts are shown in full

## Suspected security event is reported to the domiciliary regulator @v1 [proposed]

- **Given** confirmed unauthorized access to a system holding nonpublic personal information for 1,850 consumers
- **When** the incident is classified as a cybersecurity event
- **Then** the domiciliary commissioner is notified within 72 hours
- **And** affected consumers are notified in line with each state's breach statute
- **And** the incident record is retained for 5 years

## Test environments use de-identified data @v1 [proposed]

- **Given** a request to refresh the QA environment from production
- **When** the refresh runs
- **Then** names, addresses, government identifiers, and payment instruments are replaced with synthetic values
- **And** the refresh is blocked if the masking step reports any unmasked column

## Vendor receives only the minimum necessary data @v1 [published]

- **Given** an independent appraisal vendor assigned to a vehicle damage inspection
- **When** the assignment packet is transmitted
- **Then** the packet contains the vehicle, loss location, and contact phone only
- **And** the insured's social security number and banking details are excluded
