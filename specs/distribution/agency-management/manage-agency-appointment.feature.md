# Manage Agency Appointment

An appointment authorizes an agency to write specified lines in specified
states. Appointments are filed with each state DOI and must stay in step
with the agency's licensing (../producer-licensing/verify-producer-license.feature.md).

## Adding a state expands the existing appointment @v1 [published]

- **Given** an agency appointed in Ohio and Indiana
- **When** the agency requests an additional appointment in Tennessee for homeowners
- **Then** a Tennessee filing is submitted without disturbing the existing appointments
- **And** the agency code gains Tennessee homeowners authority once acknowledged

## Agency may not bind a line outside its appointment @v1 [proposed]

- **Given** an agency appointed only for personal auto in Indiana
- **When** a producer at that agency attempts to bind a commercial general liability policy
- **Then** the bind is blocked
- **And** the message names the missing line of authority

## Appointment is filed with the state department of insurance @v1 [published]

- **Given** an approved agency with an Ohio resident agency license
- **When** the distribution manager appoints the agency for personal auto and homeowners
- **Then** an appointment filing is transmitted to the Ohio DOI
- **And** the appointment becomes effective on the date the DOI acknowledges the filing

## Appointment lapses when the agency license expires @v1 [published]

- **Given** an appointed agency whose agency license expires on 31 March 2026
- **When** 1 April 2026 arrives with no renewal on file
- **Then** the appointment is moved to lapsed status
- **And** new business submissions from the agency are suspended
- **And** in-force policies remain serviceable for renewal processing

## Non-resident appointment requires a countersignature arrangement @v1 [published]

- **Given** an agency domiciled in Ohio seeking a Kentucky appointment
- **And** Kentucky requires a resident countersignature for commercial lines
- **When** the Kentucky appointment is requested
- **Then** the appointment is issued for personal lines only
- **And** the commercial lines request is queued pending a countersignature arrangement

## Rejected DOI filing is surfaced for correction @v1 [proposed]

- **Given** an appointment filing transmitted to the Illinois DOI
- **When** the DOI returns the filing with reason code "producer not licensed in state"
- **Then** the appointment stays in pending status
- **And** the distribution manager receives the DOI reason code verbatim
- **And** the filing may be resubmitted once licensing is corrected
