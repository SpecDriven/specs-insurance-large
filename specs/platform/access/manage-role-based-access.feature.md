# Manage Role-Based Access

Entitlements for Acme staff and agency users. Access is granted through
roles rather than to individuals, scoped by line of business and state, and
reviewed on a fixed cycle.

## Agency user access ends with the appointment @v1 [proposed]

- **Given** a producer whose Acme appointment is terminated
- **When** the appointment feed processes the termination
- **Then** the producer's portal access is removed
- **And** the agency principal retains read access to the book of business for 90 days

## Break-glass access is time-boxed @v1 [proposed]

- **Given** an engineer granted break-glass access during a production incident
- **When** the grant is issued
- **Then** the access expires after 4 hours without any further action
- **And** every action taken under it is reviewed by the security team within 2 business days

## Payment above role authority needs escalation @v1 [published]

- **Given** an adjuster with $15,000 authority
- **When** the adjuster approves a $22,500 settlement (claims/auto-accidents/settle-collision-claim.feature.md)
- **Then** the payment is held for a supervisor with sufficient authority
- **And** the escalation names the requesting adjuster and the amount over authority

## Quarterly access review revokes unconfirmed roles @v1 [proposed]

- **Given** a quarterly access review issued to 240 people managers
- **When** a manager does not confirm a subordinate's roles within 21 days
- **Then** the unconfirmed roles are revoked automatically
- **And** the revocation and the unreturned review are reported to internal audit

## Role grants scoped claim authority @v1 [published]

- **Given** an adjuster assigned the auto claims adjuster role scoped to Arizona
- **When** the adjuster opens a claim file
- **Then** Arizona auto claims are readable and payable up to the role's $15,000 authority
- **And** claims in other states are not visible in search results

## Segregation of duties blocks a conflicting pair @v1 [published]

- **Given** a user requesting both the claim payment approval role and the vendor bank detail maintenance role
- **When** the request is evaluated
- **Then** the second role is refused as a segregation of duties conflict
- **And** granting both requires a documented compensating control approved by risk

## Termination revokes access the same day @v1 [published]

- **Given** an employee whose last working day is today
- **When** the human resources feed marks the record terminated
- **Then** every role is revoked and active sessions are ended within one hour
- **And** the revocation is recorded against each role removed
