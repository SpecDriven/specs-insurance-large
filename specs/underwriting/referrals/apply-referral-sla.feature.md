# Apply Underwriting Referral SLA

Service level targets for responding to referred submissions, measured in
business hours from the moment the referral is queued
(refer-to-underwriter.feature.md).

## Breach escalates to the team lead @v1 [published]

- **Given** a standard referral that passes 8 business hours without a decision
- **When** the SLA monitor runs
- **Then** the referral is escalated to the team lead and flagged as breached
- **And** the agent receives a status update with a revised expected decision time

[test: breachEscalatesToTheTeamLead : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/ApplyReferralSlaTest.java#L54 ]

## Clock pauses while awaiting agent information @v1 [published]

- **Given** an underwriter who requests a roof inspection report from the agent
- **When** the referral is placed in "awaiting agent" status for 3 business days
- **Then** the SLA clock is suspended for that period
- **And** the clock resumes when the requested document is uploaded

[test: clockPausesWhileAwaitingAgentInformation : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/ApplyReferralSlaTest.java#L75 ]

## Reassignment does not reset the clock @v1 [proposed]

- **Given** a referral open for 5 business hours and reassigned to a second underwriter
- **When** the new assignment is recorded
- **Then** the original queued time continues to govern the SLA
- **And** both assignment intervals are retained for reporting

## Reminder sent before the target is reached @v1 [proposed]

- **Given** a standard referral open for 6 business hours
- **When** the reminder threshold is crossed
- **Then** a reminder is sent to the assigned underwriter and their queue supervisor

## Standard referral answered within the target @v1 [published]

- **Given** a standard personal lines referral queued at 9:00 AM Monday
- **When** the underwriter records a decision at 2:00 PM the same day
- **Then** the referral is marked met against its 8 business hour target

| referral type          | target          | first reminder | breach escalation |
| ---------------------- | --------------- | -------------- | ----------------- |
| Standard personal      | 8 hours         | 6 hours        | team lead         |
| Over-limit authority   | 4 hours         | 2 hours        | regional manager  |
| Catastrophe moratorium | 2 hours         | 1 hour         | chief underwriter |
| Complex commercial     | 2 business days | 1 day          | practice leader   |

[test: standardReferralAnsweredWithinTheTarget : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/ApplyReferralSlaTest.java#L36 ]

## Weekend and holiday hours are not counted @v1 [published]

- **Given** a referral queued at 4:00 PM on the Friday before a Monday holiday
- **When** elapsed time is measured
- **Then** only business hours from Tuesday morning count toward the target

[test: weekendAndHolidayHoursAreNotCounted : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/ApplyReferralSlaTest.java#L104 ]
