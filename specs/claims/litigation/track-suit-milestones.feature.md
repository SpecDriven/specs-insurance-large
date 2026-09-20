# Track Lawsuit Milestones

Diary and reserve discipline across the life of a defended suit, from
answer through verdict.

## Answer filed closes the pleading milestone @v1 [published]

- **Given** a suit with an answer due date of May 12
- **When** defense counsel files the answer and affirmative defenses on May 9
- **Then** the pleading milestone is marked complete with the filing date
- **And** the discovery milestone opens with a court-ordered cutoff date

## Dispositive motion outcome updates the exposure @v1 [proposed]

- **Given** a pending motion for summary judgment on the negligent entrustment count
- **When** the court grants the motion in part
- **Then** the exposure evaluation is reduced to reflect the dismissed count
- **And** the reserve change is documented with the court's order attached

## Missed status report from counsel @v1 [published]

- **Given** a quarterly status report due from defense counsel on September 30
- **When** October 14 passes with no report received
- **Then** the firm is sent an automated deficiency notice
- **And** the file is added to the litigation manager's exception list

## Reserve is re-evaluated at each milestone @v1 [published]

- **Given** an indemnity reserve of $75,000 set at suit
- **When** the plaintiff's deposition milestone completes
- **Then** a reserve re-evaluation is required within 15 days of the transcript's receipt
- **And** any change of more than $50,000 requires a claims director's approval

## Trial date within 90 days escalates the file @v1 [proposed]

- **Given** a firm trial date set for March 3
- **When** the calendar reaches December 3
- **Then** a pre-trial evaluation and a settlement authority review are scheduled
- **And** mediation is offered to plaintiff's counsel (attend-mediation.feature.md)

## Verdict in excess of limits @v1 [proposed]

- **Given** a 100/300 policy and a jury verdict of $640,000 against the insured
- **When** the verdict is entered
- **Then** the insured is notified in writing of the excess judgment and the right to retain personal counsel
- **And** the file is referred for a bad faith exposure review (handle-bad-faith-allegation.feature.md)
