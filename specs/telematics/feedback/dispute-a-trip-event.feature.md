# Dispute a Trip Event

Drivers may challenge a flagged event or an entire trip. Resolved disputes
feed back into scoring
(telematics/scoring/calculate-driving-score.feature.md).

[Jira:INS-731](https://jira.com/INS-731)

## Dispute filed after the window is refused @v1 [published]

- **Given** a trip scored 19 days ago
- **When** the driver attempts to dispute an event on that trip
- **Then** the dispute is refused as out of window
- **And** the driver is shown the 14-day limit and the trip's eligibility date

## Driver disputes a hard braking event @v1 [published]

- **Given** a trip flagged with a hard braking event at 08:14
- **When** the driver disputes the event within the 14-day window
- **Then** a dispute case is opened with the trip and event identifiers
- **And** the event is held out of scoring while the case is open

## Repeated frivolous disputes are rate-limited @v1 [proposed]

- **Given** a driver with 12 disputes filed in 30 days and 11 upheld
- **When** a further dispute is submitted
- **Then** the driver is limited to 3 open disputes at a time
- **And** the limit and the reason are explained in the app

## Speed bump pattern is overturned automatically @v1 [proposed]

- **Given** a disputed event at a location where 40 or more participants recorded a similar event at under 20 mph
- **When** the automated review runs
- **Then** the dispute is overturned in the driver's favour
- **And** the location is added to the suppression list for future trips

## Upheld dispute leaves the score unchanged @v1 [published]

- **Given** an open dispute reviewed against the raw accelerometer trace
- **When** the reviewer confirms the event
- **Then** the dispute is closed as upheld
- **And** the driver is given the deceleration measured and the threshold applied

## Whole-trip dispute reassigns the driver @v1 [proposed]

- **Given** a trip the insured says was driven by a rated household member
- **When** the reassignment is accepted
- **Then** the trip and its events move to the other driver's score
- **And** both drivers' period scores are recalculated
