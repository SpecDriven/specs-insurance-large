# Manage Portal User Access

Each agency administers its own portal users within roles Acme defines.
Access rights follow the user's licensing and the agency's appointment
status.

**Assigned:** Jonas Berg

## Agency principal invites a licensed producer @v1 [published]

- **Given** an agency principal with the administrator role
- **When** the principal invites a producer with national producer number 9930114
- **Then** an invitation is emailed with a link valid for 7 days
- **And** the producer role is granted only after license verification succeeds (../producer-licensing/verify-producer-license.feature.md)

[test: agencyPrincipalInvitesALicensedProducer : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/ManagePortalUserAccessTest.java#L31 ]

## Appointment lapse suspends every agency user @v1 [proposed]

- **Given** an agency whose appointment moves to lapsed status
- **When** the lapse is recorded
- **Then** all agency portal users are suspended from new business actions
- **And** servicing access for in-force policies is preserved

## Customer service role excludes binding @v1 [proposed]

- **Given** an unlicensed customer service representative
- **When** the principal assigns the service role
- **Then** the user may view policies, take payments, and order documents
- **And** quoting and binding actions are not available to the user

## Departed producer's policies are reassigned before deactivation @v1 [published]

- **Given** a producer with 96 in-force policies leaving the agency
- **When** the principal deactivates the producer's account
- **Then** the principal must name a receiving producer for the in-force policies
- **And** deactivation completes once the reassignment is recorded

[test: departedProducersPoliciesAreReassignedBeforeDeactivation : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/ManagePortalUserAccessTest.java#L61 ]

## Dormant account is disabled after 90 days @v1 [published]

- **Given** a portal user whose last sign-in was 1 March 2026
- **When** 30 May 2026 passes with no sign-in
- **Then** the account is disabled
- **And** reactivation requires the agency principal to re-approve the user

[test: dormantAccountIsDisabledAfter90Days : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/ManagePortalUserAccessTest.java#L102 ]

## Last administrator cannot be removed @v1 [published]

- **Given** an agency with exactly one user holding the administrator role
- **When** that user's administrator role is removed
- **Then** the change is rejected
- **And** the message states an agency must retain at least one administrator

[test: lastAdministratorCannotBeRemoved : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/ManagePortalUserAccessTest.java#L135 ]
