# Audit General Liability Exposure Basis

General liability premium is an estimate until audit. At expiration the
actual sales, payroll, or area is verified and premium is adjusted.

**Assigned:** Jonas Berg

## Audit is waived for a policy under $2,500 in premium @v1 [published]

- **Given** an expiring policy with a written premium of $1,940
- **When** the audit queue is built
- **Then** the policy is marked audit-waived
- **And** the estimated exposure is carried forward to renewal

## Audited payroll below the estimate produces a return premium @v1 [published]

- **Given** a contractor rated on estimated payroll of $900,000
- **And** audited payroll of $640,000
- **When** the audit is processed
- **Then** return premium is calculated down to the policy minimum premium
- **And** the refund is applied to any open balance before a check is issued

## Audited sales above the estimate generate additional premium @v1 [published]

- **Given** a policy rated on estimated gross sales of $1,800,000
- **And** audited gross sales of $2,470,000
- **When** the audit is processed
- **Then** additional premium is billed for the $670,000 of excess exposure
- **And** the insured receives an audit statement with a 30-day dispute window

## Insured disputes the audit within the window @v1 [proposed]

- **Given** an audit statement mailed on February 2
- **When** the insured submits corrected payroll records on February 21
- **Then** the audit is reopened for review
- **And** collection activity on the disputed amount is suspended pending the revision

## Subcontractor costs without certificates are rated as payroll @v1 [proposed]

- **Given** an audit finding $310,000 paid to subcontractors
- **And** no certificates of insurance on file for those subcontractors
- **When** the audit is computed
- **Then** the uninsured subcontractor cost is added to the insured's rating basis
- **And** the auditor lists each subcontractor lacking a certificate

## Uncooperative insured is charged an estimated audit @v1 [published]

- **Given** three documented attempts to schedule the audit over 45 days
- **When** the insured does not respond
- **Then** an estimated audit at 150% of the expiring exposure is posted
- **And** the policy is flagged as ineligible for renewal until the audit is completed
