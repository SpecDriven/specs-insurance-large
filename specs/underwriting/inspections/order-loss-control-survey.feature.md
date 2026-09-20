# Order Loss Control Survey

A deeper engineering-led survey ordered on higher-hazard or higher-value
risks, distinct from the routine property inspection
(order-property-inspection.feature.md).

## Insured refuses access to the surveyor @v1 [proposed]

- **Given** an insured who declines to schedule the engineering survey
- **When** two scheduling attempts are documented over 21 days
- **Then** the policy is referred to underwriting for non-renewal consideration
- **And** the insured is warned in writing before the referral is made

## Survey ordered on a high-value coastal dwelling @v1 [published]

- **Given** a $3,200,000 dwelling within 1,500 feet of open water
- **When** the risk is bound
- **Then** an engineering loss control survey is ordered with a 45-day due date
- **And** the survey scope includes wind mitigation features and roof attachment

## Survey scheduled outside the catastrophe season @v1 [proposed]

- **Given** a coastal risk bound on June 20 during hurricane season
- **When** the survey is ordered
- **Then** the survey is scheduled for the first available date after December 1
- **And** interim coverage continues subject to the named storm deductible

## Survey uncovers an unprotected fire exposure @v1 [published]

- **Given** a survey finding that the nearest fire hydrant is 1,800 feet from the dwelling
- **When** the protection class is recalculated
- **Then** the risk is moved from protection class 4 to class 9 at the anniversary
- **And** the premium change is disclosed with 45 days notice

## Survey waived when a recent report exists @v1 [published]

- **Given** an engineering survey completed 14 months ago with no open recommendations
- **When** the annual survey rule evaluates the risk
- **Then** the order is waived and the prior report is attached to the current term
- **And** the waiver decision is recorded with the prior report date
