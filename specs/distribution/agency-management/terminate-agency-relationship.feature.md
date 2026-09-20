# Terminate Agency Relationship

Termination ends an agency's authority to write new business. Whether the
agency keeps servicing rights and ownership of expirations depends on
whether the termination is for cause.

## Book rolls to a replacement agency at renewal @v1 [published]

- **Given** a terminated agency with 812 in-force personal auto policies
- **When** a replacement agency of record is designated
- **Then** each policy transfers to the replacement agency at its next renewal
- **And** commission on renewals after transfer accrues to the replacement agency

## Insured may elect to follow the terminated agency @v1 [published]

- **Given** an insured whose policy is scheduled to roll to a replacement agency
- **When** the insured returns a signed agent-of-record letter naming a different agency
- **Then** the agent-of-record letter takes precedence over the default roll
- **And** the change is effective on the date the letter is received

## Notice to affected policyholders goes out before renewal @v1 [proposed]

- **Given** policies rolling to a replacement agency on 1 August 2026
- **When** the renewal offer is prepared
- **Then** a servicing-change letter accompanies the renewal declarations (documents/correspondence/generate-notice-letter.feature.md)
- **And** the letter states the new agency's name, phone number, and effective date

## Termination for cause suspends binding immediately @v1 [proposed]

- **Given** an agency found to have submitted three applications with falsified garaging addresses
- **When** the special investigation unit refers the matter and termination for cause is approved
- **Then** binding authority is revoked the same day
- **And** the agency's portal access is reduced to read-only
- **And** an SIU referral is opened on the affected policies

## Termination without cause honours the notice period @v1 [published]

- **Given** an appointed agency with a contract requiring 90 days written notice
- **When** Acme issues a termination notice on 1 March 2026
- **Then** the termination is effective 30 May 2026
- **And** the agency may continue writing new business until the effective date

## Unpaid premium owed by the agency is recovered @v1 [published]

- **Given** a terminated agency holding $14,720 in collected but unremitted premium
- **When** the final commission statement is produced
- **Then** the outstanding premium is offset against earned commission
- **And** any remaining shortfall is referred to collections
