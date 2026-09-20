# Block Unlicensed Production

Writing business through an unlicensed or unappointed producer exposes
Acme to DOI penalties and can void commission. The platform enforces the
check at quote, bind, and commission payment.

## Agency principal may bind on behalf of an unlicensed staff member @v1 [published]

- **Given** an unlicensed customer service representative who assembled a complete application
- **When** the licensed agency principal reviews and binds the application
- **Then** the bind succeeds under the principal's license
- **And** the principal is recorded as the producer of record

[test: agencyPrincipalMayBindOnBehalfOfAnUnlicensedStaffMember : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/BlockUnlicensedProductionTest.java#L58 ]

## Commission is withheld on business written without authority @v1 [published]

- **Given** a policy bound on 4 February 2026 by a producer whose license lapsed 31 January 2026
- **When** the commission statement is calculated
- **Then** commission on that policy is withheld pending compliance review
- **And** the policy itself remains in force to protect the insured

[test: commissionIsWithheldOnBusinessWrittenWithoutAuthority : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/BlockUnlicensedProductionTest.java#L137 ]

## Emergency override requires compliance approval @v1 [published]

- **Given** a blocked bind where the producer holds a license the registry has not yet published
- **When** a compliance officer approves a 72-hour override with documented evidence
- **Then** the bind is permitted once
- **And** the override expires automatically after 72 hours

[test: emergencyOverrideRequiresComplianceApproval : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/BlockUnlicensedProductionTest.java#L86 ]

## Quoting is permitted while binding is blocked @v1 [proposed]

- **Given** a producer whose appointment filing is pending DOI acknowledgement
- **When** the producer prepares a quote
- **Then** the quote is produced and saved
- **And** the bind button is disabled with the reason "appointment pending"

## Repeated blocked attempts trigger an agency review @v1 [proposed]

- **Given** five blocked bind attempts from the same agency within 30 days
- **When** the threshold is reached
- **Then** a distribution compliance review is opened on the agency
- **And** the agency principal is notified that continued attempts may lead to termination for cause (../agency-management/terminate-agency-relationship.feature.md)

## Unlicensed producer cannot bind @v1 [published]

- **Given** a producer with no active license in the state of the risk
- **When** the producer attempts to bind a quote (policy/auto-policy/bind-policy.feature.md)
- **Then** the bind is refused
- **And** the attempt is written to the compliance log with the producer number and state

[test: unlicensedProducerCannotBind : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/BlockUnlicensedProductionTest.java#L35 ]
