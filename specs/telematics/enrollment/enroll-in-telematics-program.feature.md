# Enroll in the Telematics Program

Acme DriveRight rewards measured driving behaviour with a participation
discount at enrollment and a performance discount at renewal
(telematics/scoring/apply-telematics-discount.feature.md).

## Consent disclosure lists what is collected @v1 [proposed]

- **Given** an applicant reviewing the DriveRight consent screen
- **When** the disclosure is displayed
- **Then** it states that speed, acceleration, braking, time of day, and mileage are collected
- **And** it states that location traces are retained for 180 days
- **And** the accepted disclosure version is stored with the enrollment record

## Enrollment at quote grants the participation discount @v1 [published]

- **Given** a personal auto quote in an approved telematics state
- **When** the applicant opts into DriveRight before binding (policy/auto-policy/bind-policy.feature.md)
- **Then** a 5% participation discount is applied for the initial term
- **And** the monitoring period is set to 90 days from the effective date

## Enrollment at quote grants the participation discount @v2 [proposed]

Raises the initial credit and adds a second-term guarantee to v1.

- **Given** a personal auto quote in an approved telematics state
- **When** the applicant opts into DriveRight before binding
- **Then** a 10% participation discount is applied for the initial term
- **And** the renewal discount is guaranteed not to fall below 0% regardless of score

## Enrollment is unavailable in non-approved states @v1 [published]

- **Given** a vehicle garaged in a state where the DriveRight program is not yet filed
- **When** the quote is presented
- **Then** the telematics option is not offered
- **And** the reason "program not approved in this jurisdiction" is recorded for reporting

## Every rated driver must consent before collection starts @v1 [published]

- **Given** a policy with two rated drivers
- **When** only the first named insured accepts the telematics consent
- **Then** enrollment remains pending
- **And** trip data for the household is not collected until the second driver consents

## Ineligible vehicle types are rejected @v1 [proposed]

- **Given** an antique vehicle rated on a limited-mileage classification
- **When** the insured attempts to enroll that vehicle
- **Then** enrollment is refused for that vehicle
- **And** other eligible vehicles on the policy may still be enrolled

## Mid-term enrollment takes effect at the next renewal @v1 [published]

- **Given** an in-force policy 4 months into a six-month term
- **When** the insured enrolls through the mobile app
- **Then** trip collection begins immediately
- **And** no premium change is made mid-term
- **And** the participation discount is applied at the next renewal
