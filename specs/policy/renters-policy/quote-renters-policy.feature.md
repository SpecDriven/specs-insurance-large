# Quote Renters Policy

Rating and quoting for HO-4 tenant coverage. An applicant describes the
rented unit and personal property, then receives an annual premium they
can bind (bind-renters-policy.feature.md).

## Applicant in a building without working smoke detectors @v1 [published]

- **Given** the applicant answers "no" to the working smoke detector question
- **When** the quote is rated
- **Then** the protective device credit is withheld
- **And** the quote carries a condition requiring detectors before the effective date

## Basic renters quote on an apartment unit @v1 [published]

- **Given** an applicant provides the unit address, personal property limit, and deductible
- **When** the applicant requests a quote
- **Then** an annual premium is quoted on the HO-4 form
- **And** the quote lists Coverage C, Coverage D, and personal liability limits separately

| tier      | personal property | liability | deductible | annual premium |
| --------- | ----------------- | --------- | ---------- | -------------- |
| Essential | $15,000           | $100,000  | $1,000     | $148           |
| Standard  | $30,000           | $300,000  | $500       | $211           |
| Premier   | $60,000           | $500,000  | $250       | $329           |

## Flood exposure in a Special Flood Hazard Area @v1 [proposed]

- **Given** the rented unit sits on the ground floor of a building in flood zone AE
- **When** the quote is produced
- **Then** the quote states that flood is excluded under the HO-4 form
- **And** the applicant is referred to a standalone NFIP contents policy

## Prior dog bite loss declines the risk @v1 [published]

- **Given** an applicant discloses a liability claim for a dog bite settled two years ago
- **When** the applicant requests a quote
- **Then** no quote is offered
- **And** the decline reason "animal liability outside appetite" is recorded

## Quote expires 30 days after it is issued @v1 [published]

- **Given** a renters quote issued on March 3
- **When** the applicant returns on April 5 to bind
- **Then** the quote is marked expired and cannot be bound
- **And** the applicant is invited to re-rate against current territory factors

## Roommate listed as an additional named insured @v1 [proposed]

- **Given** two unrelated roommates share the rented unit and both want coverage
- **When** the second roommate is added to the quote
- **Then** both are shown as named insureds on the declarations page
- **And** Coverage C is shared across both insureds without duplication
- **And** a $20 multi-insured surcharge is applied

## Scheduled jewelry rider raises the quoted premium @v1 [published]

- **Given** an applicant schedules a $12,000 engagement ring with a recent appraisal
- **When** the quote is recalculated
- **Then** the scheduled personal property endorsement is added at $1.85 per $100 of value
- **And** the ring is insured on an agreed-value basis with no deductible
