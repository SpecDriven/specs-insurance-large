# Track Inspection Recommendations

Recommendations raised by an inspection or survey are tracked to closure,
each with a severity, a cure period, and a consequence if it is not met.

[Jira:CLM-338](https://jira.com/CLM-338)

## Advisory recommendations do not affect the policy @v1 [published]

- **Given** an advisory recommendation to trim vegetation away from the siding
- **When** the cure period expires without action
- **Then** the recommendation is closed as declined with no coverage consequence
- **And** it is carried forward as context on the next inspection

[test: advisoryRecommendationsDoNotAffectThePolicy : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/TrackInspectionRecommendationsTest.java#L82 ]

## Critical recommendation opens with a 30-day cure period @v1 [published]

- **Given** an inspection citing knob-and-tube wiring in an occupied dwelling
- **When** the recommendation is created at critical severity
- **Then** a 30-day cure period starts and the insured is notified in writing
- **And** the policy is flagged for non-renewal if the cure period lapses

[test: criticalRecommendationOpensWithA30DayCurePeriod : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/TrackInspectionRecommendationsTest.java#L28 ]

## Extension granted for a contractor backlog @v1 [proposed]

- **Given** a critical roof recommendation with a 30-day cure period
- **When** the insured documents a signed contract with a 10-week installation date
- **Then** the cure period is extended to the contracted completion date
- **And** the extension and its justification are recorded by the underwriter

## Insured submits proof of completion @v1 [published]

- **Given** an open recommendation to install handrails on an exterior stair
- **When** the insured uploads a dated photograph and a contractor invoice
- **Then** the recommendation is closed as complete
- **And** the non-renewal flag is cleared from the policy

[test: insuredSubmitsProofOfCompletion : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/TrackInspectionRecommendationsTest.java#L57 ]

## Partial completion keeps the recommendation open @v1 [proposed]

- **Given** a recommendation to replace four electrical outlets
- **When** the insured documents two replaced outlets at the cure deadline
- **Then** the recommendation remains open with a documented partial status
- **And** a single 15-day final extension is granted

## Recommendation reopens after a related claim @v1 [proposed]

- **Given** a recommendation closed as complete for a repaired plumbing supply line
- **When** a water damage claim occurs at the same location within 12 months
- **Then** the recommendation is reopened for verification
- **And** the claim file is linked (../../claims/home-claims/record-water-damage-claim.feature.md)
