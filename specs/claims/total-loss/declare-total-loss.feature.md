# Declare a Vehicle Total Loss

A vehicle is a total loss when repair cost plus salvage value meets the
state's total loss threshold, or when the vehicle cannot be safely repaired.
Declaration starts valuation (value-total-loss-settlement.feature.md).

## Borderline vehicle held for a second opinion @v1 [proposed]

- **Given** a repair-to-value ratio of 78% in a state with an 80% threshold
- **When** the adjuster requests a total loss declaration
- **Then** a second appraisal is required before the declaration can be recorded
- **And** the insured is told the vehicle remains in repair status during the review

## Constructive total loss on an unrepairable structure @v1 [published]

- **Given** a repair estimate of $9,800 on a $21,000 vehicle with a bent unibody rail
- **When** the structural specialist finds the frame cannot be returned to factory tolerance
- **Then** the vehicle is declared a constructive total loss below the numeric threshold
- **And** the structural report is attached to the declaration

## Flood vehicle declared a total loss regardless of estimate @v1 [proposed]

- **Given** a comprehensive claim where water reached the dashboard
- **When** the inspection confirms water intrusion above the seat rails
- **Then** the vehicle is declared a total loss under the flood damage policy
- **And** the title is branded as flood per state requirements (process-salvage.feature.md)

## Insured notified of the total loss decision @v1 [proposed]

- **Given** a total loss declaration recorded on the claim
- **When** the decision is finalized
- **Then** the insured is contacted by phone within one business day and in writing within three
- **And** the notice explains the valuation process, rental end date, and the title documents required

## Repair cost crosses the state total loss threshold @v1 [published]

- **Given** a Texas loss with an actual cash value of $18,200 and a repair estimate of $17,100
- **When** the total loss formula is applied against the state's 100% threshold
- **Then** the vehicle is declared a total loss
- **And** the estimate, the valuation, and the salvage bid are retained as the threshold evidence

## Total loss formula including salvage in the calculation @v1 [published]

- **Given** a state using repair cost plus salvage value against actual cash value
- **When** repairs are $11,400 and the salvage bid is $4,900 on a $15,800 vehicle
- **Then** the combined $16,300 exceeds actual cash value and the vehicle is declared a total loss
- **And** the calculation is shown to the insured on request

| state       | threshold basis                     | threshold |
| ----------- | ----------------------------------- | --------- |
| Texas       | repair cost vs actual cash value    | 100%      |
| Florida     | repair cost vs actual cash value    | 80%       |
| Iowa        | repair cost vs actual cash value    | 50%       |
| Pennsylvania| total loss formula incl. salvage    | 100%      |

## Total loss on a leased vehicle @v1 [proposed]

- **Given** a leased vehicle with a lessor named on the declarations page
- **When** the total loss is declared
- **Then** the lessor is notified as the titled owner and becomes the settlement payee
- **And** the lessee's gap exposure is evaluated (apply-gap-coverage.feature.md)
