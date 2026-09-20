# Verify Insurance Score

Ordering the credit-based insurance score, mapping it to a rating tier,
and meeting the adverse action and state restriction requirements.

[Jira:INS-1490](https://jira.com/INS-1490)

## Adverse action notice on an unfavorable score @v1 [published]

- **Given** an applicant rated in tier E because of the insurance score
- **When** the policy is issued at the higher tier rate
- **Then** an adverse action notice naming the consumer reporting agency is mailed within 30 days
- **And** the top four score reason codes are listed in the notice

[test: adverseActionNoticeOnAnUnfavorableScore : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/VerifyInsuranceScoreTest.java#L66 ]

## Extraordinary life event triggers a rescore @v1 [proposed]

- **Given** an insured who submits documentation of a catastrophic medical event
- **When** an extraordinary life circumstance exception is requested
- **Then** the score is re-ordered with the affected accounts excluded
- **And** the policy is rerated from the current term's effective date if the tier improves

## No-hit applicant is placed in the neutral tier @v1 [published]

- **Given** a thin-file applicant for whom the vendor returns no score
- **When** tiering is applied
- **Then** the applicant is assigned the statutorily neutral tier
- **And** the submission is not declined for lack of a score

[test: noHitApplicantIsPlacedInTheNeutralTier : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/VerifyInsuranceScoreTest.java#L47 ]

## Score cannot be used in a prohibited state @v1 [proposed]

- **Given** a submission for a risk located in a state prohibiting credit-based insurance scores
- **When** tiering runs
- **Then** the score is neither ordered nor used
- **And** tiering falls back to the non-credit factor set for that state

## Score is refreshed at renewal but cannot worsen the tier @v1 [proposed]

- **Given** a renewing policy whose refreshed score falls from 762 to 690
- **When** the renewal is rated
- **Then** the tier assigned at new business is retained under the no-downgrade rule
- **And** the refreshed score is stored for the next scheduled review

## Score maps the applicant to a rating tier @v1 [published]

- **Given** an insurance score of 762 returned by the scoring vendor
- **When** the score is mapped to the company tier table
- **Then** the applicant is placed in tier B with a 0.94 tier factor
- **And** the score model version and order date are stored on the submission

[test: scoreMapsTheApplicantToARatingTier : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/VerifyInsuranceScoreTest.java#L29 ]
