# Manage Authorized Representatives

Third parties the named insured permits to transact on a policy: a spouse,
an attorney-in-fact under a power of attorney, a public adjuster, or an
agency service representative. Scope and expiry are recorded per party.

[Jira:INS-742](https://jira.com/INS-742)

## Authority expires on its stated end date @v1 [proposed]

- **Given** a representative authorized through March 31 with no renewal on file
- **When** the representative calls on April 1
- **Then** the representative is treated as an unauthorized third party
- **And** the call is offered a callback to the first named insured

## Conflicting authorizations from co-insureds @v1 [proposed]

- **Given** two named insureds on the same policy who submit opposing authorization requests for the same third party
- **When** the second request is received within the same business day
- **Then** neither authorization takes effect
- **And** the conflict is escalated to the servicing supervisor, whose decision follows the first named insured

## Named insured adds a limited representative @v1 [published]

- **Given** a first named insured on a homeowners policy
- **When** the insured authorizes a spouse for billing inquiries only
- **Then** the representative may view balances and make payments
- **And** the representative is denied access to claim file notes and medical records

## Power of attorney grants full servicing authority @v1 [published]

- **Given** a durable power of attorney executed in Ohio and uploaded to the account
- **When** an underwriter accepts the document after review
- **Then** the attorney-in-fact is granted full servicing authority including endorsements (policy/auto-policy/endorse-policy.feature.md)
- **And** the authority record cites the document identifier and the execution date

## Public adjuster authority ends with the claim @v1 [published]

- **Given** a public adjuster authorized on a water damage claim (claims/home-claims/record-water-damage-claim.feature.md)
- **When** the claim is closed and the final payment clears
- **Then** the adjuster's authority expires automatically at claim closure
- **And** further correspondence from that adjuster is routed to the claim owner for review

## Revocation takes effect immediately @v1 [proposed]

- **Given** an active representative on a personal auto policy
- **When** the first named insured revokes the authorization by phone after step-up verification
- **Then** the representative's access is removed before the call ends
- **And** the revoked representative is notified in writing within 3 business days
