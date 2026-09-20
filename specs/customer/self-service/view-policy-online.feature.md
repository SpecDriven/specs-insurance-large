# View Policy Online

The insured's authenticated view of coverages, documents, and billing
across every policy on the account.

**Assigned:** Miguel Santos

## Cancelled policy remains viewable in read-only form @v1 [published]

- **Given** a policy cancelled 3 months ago
- **When** the insured opens it from the policy history
- **Then** the final declarations page and the cancellation notice are viewable
- **And** all service actions are disabled with an explanation

## Coverage detail shows limits, deductibles, and exclusions @v1 [proposed]

- **Given** a homeowners policy with an HO-3 form and a wind and hail exclusion
- **When** the insured opens the coverage detail
- **Then** Coverage A through F limits and the deductible structure are displayed
- **And** the wind and hail exclusion is shown with a plain-language explanation

## Declarations page is available for download @v1 [published]

- **Given** an auto policy with a current declarations page on file
- **When** the insured opens the documents tab
- **Then** the declarations page and all attached endorsement forms are downloadable as PDFs
- **And** each document shows its form number and edition date

## Only the first named insured sees billing detail @v1 [published]

- **Given** a portal login belonging to a secondary named insured
- **When** the billing tab is opened
- **Then** the amount due and due date are shown without payment method details
- **And** changes to autopay and payment methods are restricted to the first named insured

## Pending endorsement is shown before it takes effect @v1 [proposed]

- **Given** an endorsement submitted yesterday with an effective date 6 days out
- **When** the insured views the policy
- **Then** the current coverages are shown with a banner describing the pending change and its effective date
- **And** the revised declarations page becomes available once the endorsement is effective

## Policy summary lists all in-force policies @v1 [published]

- **Given** an insured authenticated to the customer portal
- **When** the policy summary loads
- **Then** each in-force policy is listed with its policy number, term dates, and next amount due
- **And** policies cancelled more than 24 months ago are excluded from the default view

## Session expires after inactivity @v1 [proposed]

- **Given** an authenticated portal session with no activity for 20 minutes
- **When** the insured returns and requests a page
- **Then** the session is terminated and re-authentication is required
- **And** any unsubmitted form entries are discarded rather than retained
