# Review Inspection Findings

Underwriter review of a completed inspection report: confirming the rated
exposure, identifying hazards, and deciding what happens to the policy.

## Insured disputes the inspected square footage @v1 [proposed]

- **Given** an insured who submits county assessor records contradicting the report
- **When** the dispute is filed within 30 days
- **Then** the vendor is asked to reconcile and the coverage change is held
- **And** the policy is rerated only after the reconciliation is complete

## Replacement cost is materially understated @v1 [published]

- **Given** a rated dwelling limit of $480,000 and an inspected replacement cost of $612,000
- **When** the variance exceeds the 10% tolerance
- **Then** the dwelling limit is increased to the inspected value at the next anniversary
- **And** the insured receives 45 days notice of the coverage and premium change

## Report belongs to the wrong address @v1 [proposed]

- **Given** a report whose photographs show a different street number than the risk address
- **When** the mismatch is detected during review
- **Then** the report is rejected and a replacement inspection is ordered at vendor expense
- **And** no underwriting action is taken on the rejected report

## Report confirms the rated exposure @v1 [published]

- **Given** a completed inspection showing 2,340 square feet and a 6-year-old roof
- **When** the underwriter reviews the report against the application
- **Then** the findings are accepted and the policy continues unchanged
- **And** the review is closed with a "no action required" disposition

## Undisclosed trampoline changes the liability decision @v1 [published]

- **Given** an inspection photograph showing an unfenced trampoline
- **When** the underwriter reviews the finding
- **Then** a trampoline liability exclusion endorsement is added at the next anniversary
- **And** the insured may remove the exclusion by documenting safety netting and fencing

## Unrepaired hazard leads to non-renewal @v1 [published]

- **Given** an inspection documenting a deteriorated deck with missing guardrails
- **When** the hazard is not corrected within the 60-day cure period
- **Then** the policy is non-renewed for an uncorrected hazardous condition
- **And** photographs from the report are retained with the notice
