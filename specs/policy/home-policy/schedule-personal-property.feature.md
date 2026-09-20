# Schedule Personal Property

Scheduling high-value articles on form HO 04 61 to escape the special
limits that apply to unscheduled Coverage C property.

## Appraisal older than five years is rejected @v1 [published]

- **Given** an appraisal for a fine art piece dated 2019-04-11
- **When** the article is submitted for scheduling in 2026
- **Then** the submission is rejected with reason "appraisal exceeds five years"
- **And** the insured is asked to supply a current appraisal or a bill of sale

## Class limits govern which articles need documentation @v1 [published]

- **Given** an insured scheduling articles across several classes
- **When** the schedule is reviewed
- **Then** documentation is required only for articles exceeding the class threshold

| class            | per-item threshold | documentation required |
| ---------------- | ------------------ | ---------------------- |
| Jewelry          | $5,000             | Appraisal              |
| Fine art         | $10,000            | Appraisal              |
| Firearms         | $2,500             | Bill of sale           |
| Cameras          | $3,000             | Receipt                |
| Silverware       | $7,500             | Appraisal              |

## Jewelry above the special limit is scheduled individually @v1 [published]

- **Given** an HO-3 whose unscheduled theft limit for jewelry is $1,500
- **And** an appraisal valuing a diamond pendant at $9,200
- **When** the article is scheduled on form HO 04 61
- **Then** the article is covered at the $9,200 agreed amount for all risks of direct loss
- **And** no deductible applies to a scheduled article loss

## Newly acquired article gets automatic interim coverage @v1 [proposed]

- **Given** a policy with at least one scheduled item in the jewelry class
- **When** the insured acquires a new article in that class
- **Then** the article is covered automatically for 30 days up to 25% of the class schedule
- **And** coverage lapses unless the article is reported and scheduled within the 30 days

## Pair-and-set clause applies to a partial loss @v1 [proposed]

- **Given** a scheduled pair of earrings insured for $6,000
- **When** one earring is lost
- **Then** the loss is settled as the difference between the pre-loss and post-loss value of the pair
- **And** the carrier may elect to pay the full $6,000 and take the remaining earring as salvage

## Removing a sold article refunds the unearned scheduled premium @v1 [proposed]

- **Given** a scheduled watch insured for $14,000
- **When** the insured reports the watch was sold on June 30
- **Then** the article is removed from the schedule effective June 30
- **And** the unearned scheduled premium is returned pro-rata
