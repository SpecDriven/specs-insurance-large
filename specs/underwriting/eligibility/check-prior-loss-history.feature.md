# Check Prior Loss History

Ordering and evaluating loss runs and CLUE reports for the applicant and
all household members over the experience period.

## Applicant disputes a loss that is not theirs @v1 [proposed]

- **Given** a CLUE entry matched to a prior occupant of the same address
- **When** the applicant disputes the entry with supporting documents
- **Then** the entry is suppressed from the frequency count pending the vendor dispute
- **And** the submission is rerated within 2 business days of the dispute outcome

## Closed-without-payment claims are counted separately @v1 [proposed]

- **Given** a loss run showing two claims closed without payment and one paid claim
- **When** loss history is evaluated
- **Then** only the paid claim counts toward the frequency threshold
- **And** the closed-without-payment entries are retained for underwriter context

## Losses from an undisclosed household member @v1 [proposed]

- **Given** the household report lists a resident spouse not named on the application
- **When** that spouse's three at-fault losses are discovered
- **Then** the submission is referred with a material misrepresentation flag
- **And** the application must be corrected before any quote is released

## Three-year loss run ordered at submission @v1 [published]

- **Given** a new business submission for a homeowners risk
- **When** loss history is ordered
- **Then** a 5-year CLUE property report is retrieved for the applicant and the address
- **And** every reported loss is matched to the applicant by name and date of birth

## Two or more water losses trigger a decline @v1 [published]

- **Given** an applicant with water damage claims paid in 2022 and 2024
- **When** loss history is evaluated
- **Then** the submission is declined for water loss frequency
- **And** the claim numbers supporting the decline are cited in the notice

## Weather-only losses are excluded from the frequency count @v1 [published]

- **Given** three losses of which two are hail losses under a statewide catastrophe code
- **When** the frequency rule is applied
- **Then** only the single non-weather loss counts toward the frequency threshold
- **And** the catastrophe codes used for the exclusion are recorded
