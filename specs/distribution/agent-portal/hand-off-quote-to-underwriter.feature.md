# Hand Off a Quote to an Underwriter

Risks outside the producer's binding authority or outside published
appetite leave the portal and enter an underwriting queue. The producer
keeps visibility of the submission throughout.

[Jira:PC-2087](https://jira.com/PC-2087)

## Declined submission records an appetite reason @v1 [published]

- **Given** a referred submission for a roofing contractor class code
- **When** the underwriter declines on appetite grounds
- **Then** the decline reason and class code are recorded on the submission
- **And** the producer is advised the risk may be placed through surplus lines

## Missing loss runs stop the underwriting clock @v1 [published]

- **Given** a commercial submission requiring 5 years of loss runs
- **When** the underwriter requests the missing loss runs
- **Then** the submission moves to awaiting-information and the decision clock pauses
- **And** the clock resumes when the producer uploads the loss runs

## Premium above binding authority is referred @v1 [published]

- **Given** a producer with $25,000 binding authority per policy
- **When** a commercial auto quote rates at $38,400 annual premium
- **Then** the quote is referred to an underwriter rather than bound
- **And** the referral reason "exceeds producer binding authority" is attached

## Producer withdraws a pending referral @v1 [proposed]

- **Given** a referral awaiting an underwriting decision
- **When** the producer withdraws it because the applicant placed coverage elsewhere
- **Then** the submission closes as withdrawn
- **And** the underwriter's queue is cleared without a decision being recorded

## Referral service level is tracked and escalated @v1 [published]

- **Given** a referral submitted at 09:00 on a Tuesday
- **When** the referral is not acknowledged within the service level for its tier
- **Then** the referral escalates to the underwriting manager
- **And** the producer sees the escalation on the submission timeline

| referral tier | premium band          | acknowledgement SLA | decision SLA |
| ------------- | --------------------- | ------------------- | ------------ |
| Standard      | under $50,000         | 4 business hours    | 2 days       |
| Complex       | $50,000 – $250,000    | 8 business hours    | 5 days       |
| Large account | over $250,000         | 1 business day      | 10 days      |

## Underwriter counteroffer returns to the producer @v1 [proposed]

- **Given** a referred homeowners submission on a dwelling with knob-and-tube wiring
- **When** the underwriter offers terms with a $5,000 all-other-perils deductible and a wiring exclusion
- **Then** the counteroffer is returned to the producer in the portal
- **And** the producer may accept, decline, or submit additional documentation
