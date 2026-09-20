# Report to Rating Bureau

Acme reports policy and loss data to NCCI and to independent state bureaus
on statutory schedules. Reporting accuracy drives future experience
modifiers (apply-experience-modifier.feature.md).

**Assigned:** Aisha Bello

## Corrected loss valuation is filed after a reserve change @v1 [proposed]

- **Given** an already-reported claim whose incurred value moves from $22,000 to $190,000
- **When** the change is recognized after the valuation date
- **Then** a correction report is filed with the bureau
- **And** the insured is notified that a revised experience modifier may follow

## Late reporting is escalated to compliance @v1 [proposed]

- **Given** a unit statistical report past its due date by 45 days
- **When** the reporting exception report runs
- **Then** the item is escalated to the compliance team
- **And** the potential bureau fine is recorded on the exception

## Rejected policy record is corrected and resubmitted @v1 [published]

- **Given** a policy record rejected by NCCI for an invalid class code
- **When** the rejection is worked
- **Then** the class code is corrected and the record is resubmitted within 10 business days
- **And** the original submission date is retained for timeliness measurement

## Submit a new policy within the statutory window @v1 [published]

- **Given** a workers compensation policy bound with an effective date of May 1
- **When** the bureau reporting job runs
- **Then** a policy record is transmitted no later than 30 days after the effective date
- **And** the transmission acknowledgement is stored with the policy

## Unit statistical report filed at 18 months @v1 [published]

- **Given** a policy with an effective date of January 1, 2025
- **When** July 1, 2026 arrives
- **Then** the first unit statistical report of payroll and valued losses is filed
- **And** claims are valued as of the 18-month valuation date
