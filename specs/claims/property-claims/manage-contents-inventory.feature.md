# Manage Contents Inventory

Collection and valuation of the personal property schedule after a Coverage
C loss. The inventory feeds depreciation and payment
(apply-depreciation.feature.md).

## Duplicate lines across two claims on the same policy @v1 [proposed]

- **Given** two open claims on the same policy within 90 days
- **When** four inventory lines appear on both claim schedules
- **Then** the duplicate lines are matched and paid only once
- **And** the duplication is documented and reviewed before an SIU referral is considered

## Insured submits an itemized inventory @v1 [published]

- **Given** a theft claim with Coverage C available (claims/home-claims/record-theft-claim.feature.md)
- **When** the insured returns the inventory workbook with 62 line items
- **Then** each line is priced to like kind and quality replacement cost
- **And** items without an age or purchase source are flagged for follow-up before pricing

## Inventory not returned within the proof of loss window @v1 [published]

- **Given** an inventory workbook sent to the insured on May 2
- **When** 60 days pass with no submission and two documented reminders
- **Then** the contents portion is closed without payment for failure to submit a sworn proof of loss
- **And** the file notes the dates of both reminders and the mailing method

## Ownership verified through receipts and photographs @v1 [published]

- **Given** a line item claimed at $4,100 for a camera kit
- **When** the insured provides the original invoice and pre-loss photographs
- **Then** the line is accepted at the documented replacement cost
- **And** the supporting documents are attached to the inventory line, not the claim root

## Replacement cost items reviewed for like kind and quality @v1 [proposed]

- **Given** a claimed 2015 65-inch plasma television with no comparable plasma model still sold
- **When** the pricing specialist selects a replacement comparable
- **Then** a current 65-inch LED model of similar screen size and resolution is used to set replacement cost
- **And** the rationale for the substitution is recorded on the line

## Scheduled items adjusted on the agreed value @v1 [proposed]

- **Given** a scheduled personal property endorsement listing a ring at an agreed value of $12,000
- **When** the ring is destroyed in a covered fire
- **Then** the agreed value is paid in full with no deductible and no depreciation
- **And** the scheduled item is removed from the endorsement at the insured's direction
