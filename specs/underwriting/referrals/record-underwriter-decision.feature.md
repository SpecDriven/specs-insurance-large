# Record Underwriter Decision

Capturing the outcome of a referral — accept, accept with conditions,
counter-offer, or decline — with the reasoning and notices each outcome
requires.

## Accept as submitted releases the quote @v1 [published]

- **Given** a referral with all requested information on file
- **When** the underwriter records an accept decision
- **Then** the submission returns to the agent as a bindable quote
- **And** the decision, underwriter name, and timestamp are written to the file

## Accept with conditions attaches requirements to the bind @v1 [published]

- **Given** a homeowners referral on a 24-year-old roof
- **When** the underwriter accepts subject to a roof inspection within 60 days
- **Then** the condition is attached to the quote and printed on the binder
- **And** the inspection order is created (../inspections/order-property-inspection.feature.md)

## Counter-offer with a higher deductible @v1 [published]

- **Given** a submission with a $500 wind deductible in a coastal territory
- **When** the underwriter counters with a 2% named storm deductible
- **Then** the counter-offer is presented to the agent with the revised premium
- **And** the original quote remains available for 5 days for comparison

## Decision reversed within the same business day @v1 [proposed]

- **Given** a decline recorded at 10:00 AM and new loss documentation received at 2:00 PM
- **When** the underwriter reverses the decision the same day
- **Then** the original decline is superseded and both entries are retained
- **And** no decline notice is mailed if the reversal precedes the nightly notice run

## Decline notice delivery and DOI record retention @v1 [proposed]

- **Given** a recorded decline on a personal auto submission
- **When** the nightly notice run executes
- **Then** the applicant receives the decline notice by mail and email
- **And** the notice is retained for 5 years to support any DOI complaint

## Decline requires a reason code and free text @v1 [proposed]

- **Given** an underwriter declining a submission for loss frequency
- **When** the decision is saved without free-text reasoning
- **Then** the save is rejected until a narrative explanation is entered
- **And** the reason code and narrative are both included in the decline notice
