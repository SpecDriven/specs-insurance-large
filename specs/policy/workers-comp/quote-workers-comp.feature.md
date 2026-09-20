# Quote Workers Compensation Policy

Rating and quoting on the standard workers compensation and employers
liability policy. Premium is payroll times the class rate, adjusted by the
experience modifier (apply-experience-modifier.feature.md) and schedule
credits.

## Assigned risk submission is routed to the state pool @v1 [proposed]

- **Given** an applicant Acme will not write voluntarily
- **When** the agent requests residual market placement
- **Then** the submission is packaged for the state assigned risk plan
- **And** the agent is given the pool's application receipt number

## Decline a risk with an uncorrected OSHA willful violation @v1 [published]

- **Given** an applicant with an open OSHA willful violation from a 2025 fall fatality
- **When** the agent requests a quote
- **Then** no quote is offered
- **And** the decline reason "unresolved serious safety violation" is recorded

## Employers liability limits can be increased @v1 [published]

- **Given** a quoted policy at standard employers liability limits
- **When** the agent selects 1,000/1,000/1,000
- **Then** an increased limits factor of 1.043 is applied to the manual premium

## Missing FEIN blocks the quote @v1 [published]

- **Given** an application with no federal employer identification number
- **When** the agent requests a quote
- **Then** the quote is blocked
- **And** the agent is told the FEIN is required for bureau reporting (report-to-rating-bureau.feature.md)

## Premium discount applies above $10,000 of standard premium @v1 [published]

- **Given** a risk developing $58,000 of standard premium
- **When** the quote is rated
- **Then** a tiered premium discount is applied

| standard premium band | discount |
| --------------------- | -------- |
| $0 – $10,000          | 0.0%     |
| $10,001 – $200,000    | 9.1%     |
| $200,001 – $1,750,000 | 11.3%    |

## Quote a single-state clerical and shop risk @v1 [published]

- **Given** an applicant in Indiana with $420,000 of payroll in class code 8810 and $1,100,000 in class code 3632
- **When** the agent requests a quote
- **Then** manual premium is developed for each class code
- **And** employers liability limits of 100/500/100 are quoted as standard

## Sole proprietor election must be filed @v1 [proposed]

- **Given** a sole proprietor who wants coverage on herself
- **When** the agent includes the owner's payroll in the quote
- **Then** the quote requires a signed inclusion election form for the state of record
- **And** the owner's payroll is capped at the state's statutory minimum and maximum
