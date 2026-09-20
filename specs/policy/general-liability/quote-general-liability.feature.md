# Quote General Liability Policy

Rating and quoting on the commercial general liability occurrence form
(CG 00 01). Exposure basis, class code, and limits drive the premium
(rate-by-class-code.feature.md).

## Claims-made form requires a retroactive date @v1 [published]

- **Given** an applicant requests the claims-made coverage form
- **When** the agent submits the quote without a retroactive date
- **Then** the quote cannot be completed
- **And** the agent is prompted for a retroactive date no earlier than the applicant's prior coverage inception

## Deductible option reduces the premium @v1 [proposed]

- **Given** an applicant selects a $5,000 per-occurrence bodily injury and property damage deductible
- **When** the quote is rated
- **Then** an 11% deductible credit is applied
- **And** the quote notes that Acme pays first and bills the deductible back to the insured

## Liquor liability exclusion applied to a restaurant @v1 [published]

- **Given** a restaurant applicant reporting 28% of receipts from alcohol sales
- **When** the quote is produced
- **Then** the liquor liability exclusion CG 21 40 is attached
- **And** the agent is offered a separate liquor liability quote

## Minimum premium applies to a small contractor @v1 [proposed]

- **Given** a sole-proprietor handyman with $48,000 in annual payroll
- **When** the rated premium computes to $310
- **Then** the class minimum premium of $750 is charged instead

## Prior loss frequency triggers underwriter referral @v1 [proposed]

- **Given** a loss run showing 5 liability claims in the past three years
- **When** the agent requests a quote
- **Then** the submission is referred to an underwriter
- **And** the loss run and a written explanation of corrective measures are required

## Quote a retail store on a sales exposure basis @v1 [published]

- **Given** an applicant operates a hardware store with $2,400,000 in annual gross sales
- **And** class code 18437 applies
- **When** the agent requests a quote
- **Then** an annual premium is quoted for each limit option

| occurrence limit | general aggregate | products aggregate | annual premium |
| ---------------- | ----------------- | ------------------ | -------------- |
| $500,000         | $1,000,000        | $1,000,000         | $1,780         |
| $1,000,000       | $2,000,000        | $2,000,000         | $2,265         |
| $2,000,000       | $4,000,000        | $4,000,000         | $3,040         |

## Roofing contractor is outside appetite @v1 [published]

- **Given** an applicant whose operations include residential roofing at heights over two stories
- **When** the agent requests a quote
- **Then** no quote is offered
- **And** the decline reason "prohibited class - roofing" is recorded
