# Value Total Loss Settlement

**Assigned:** Aisha Bello

Actual cash value for a totalled vehicle, built from comparable vehicles in
the local market with condition and mileage adjustments, plus the taxes and
fees the insured will incur replacing it.

## Aftermarket equipment covered only if endorsed @v1 [proposed]

- **Given** a $4,200 audio and wheel package installed by the insured
- **When** the valuation is prepared with no custom equipment endorsement on the policy
- **Then** the aftermarket equipment is limited to the $1,000 special equipment allowance
- **And** the insured is shown the endorsement that would have scheduled the equipment

## Appraisal clause invoked on an unresolved valuation @v1 [proposed]

- **Given** a valuation dispute unresolved after two revised reports
- **When** the insured invokes the appraisal clause in writing
- **Then** each party names a competent appraiser within 20 days
- **And** the two appraisers select an umpire, whose decision on value binds both parties

## Betterment not applied to a total loss @v1 [published]

- **Given** an adjuster attempting to apply tire and battery betterment to a total loss settlement
- **When** the settlement is reviewed before release
- **Then** the betterment deductions are removed because condition is already reflected in actual cash value
- **And** the corrected offer is reissued to the insured

## Insured disputes the valuation with dealer quotes @v1 [proposed]

- **Given** an offer of $19,600 and two dealer quotes from the insured averaging $22,300
- **When** the dispute is submitted
- **Then** the vendor re-runs the valuation with the insured's comparables included
- **And** any comparable rejected must have the reason documented in the revised report

## Prior unrepaired damage reduces actual cash value @v1 [published]

- **Given** documented hail damage present before the date of loss
- **When** the condition adjustment is applied
- **Then** a $1,450 deduction for prior unrepaired damage is taken from actual cash value
- **And** the pre-loss photographs supporting the deduction are attached

## Sales tax and title fees added to the settlement @v1 [published]

- **Given** a state requiring the carrier to pay sales tax and transfer fees on a total loss
- **When** the settlement of $19,600 is calculated
- **Then** state sales tax of 6.25% and a $172 title and registration fee are added
- **And** the deductible is subtracted after the taxes and fees are added

## Valuation built from local comparable vehicles @v1 [published]

- **Given** a 2020 sedan with 58,400 miles declared a total loss in the Denver market
- **When** the valuation vendor pulls comparable listings
- **Then** at least three comparables within 150 miles and 90 days are used
- **And** each comparable is adjusted for mileage, trim, and options
- **And** the valuation report is provided to the insured with the offer
