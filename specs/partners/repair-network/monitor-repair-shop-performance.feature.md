# Monitor Repair Shop Performance

Scorecards for direct repair program shops. Cycle time, supplement rate,
comeback rate, and claimant satisfaction drive assignment share and the
annual agreement review (manage-preferred-repair-network.feature.md).

**Assigned:** Dana Whitfield

## Catastrophe repairs are excluded from cycle time @v1 [published]

- **Given** repairs completed during the declared Denver hail catastrophe
- **When** cycle time is calculated for the affected months
- **Then** catastrophe claims are excluded from the cycle time metric
- **And** they remain included in the comeback and satisfaction metrics

## Comeback spike triggers a quality review @v1 [proposed]

- **Given** a shop whose comeback rate rises from 1.2% to 6.8% in one month
- **When** the scorecard is published
- **Then** a quality review is opened and the shop is moved to the Watch tier immediately
- **And** the shop has 60 days to present a corrective action plan

## Low volume suppresses the tier @v1 [published]

- **Given** a shop with 7 completed repairs in the scoring quarter
- **When** the tier is calculated and the minimum credible volume is 15
- **Then** the shop keeps its prior quarter tier
- **And** the scorecard notes that the result is not statistically credible

## Monthly scorecard is published to the shop @v1 [published]

- **Given** a network shop with 62 completed repairs in March
- **When** the monthly scorecard job runs
- **Then** the shop receives its cycle time, supplement rate, comeback rate, and satisfaction score
- **And** each metric is shown against the service area median

## Scorecard tier sets assignment share @v1 [published]

- **Given** a scored shop in the Boise service area
- **When** assignment share is recalculated for the quarter
- **Then** the shop's tier determines the share of eligible assignments it receives

| tier       | cycle time  | supplement rate | comeback rate | assignment share |
| ---------- | ----------- | --------------- | ------------- | ---------------- |
| Platinum   | under 7.0d  | under 18%       | under 1.5%    | 40%              |
| Gold       | under 9.5d  | under 26%       | under 3.0%    | 30%              |
| Standard   | under 13.0d | under 35%       | under 5.0%    | 20%              |
| Watch      | any         | any             | any           | 10%              |

## Shop disputes a scorecard metric @v1 [proposed]

- **Given** a shop that disputes 4 supplements counted against it
- **When** the network manager upholds 3 of the 4 disputes
- **Then** the supplement rate is restated and the scorecard is reissued
- **And** the tier is recalculated using the restated figure
