# Create Customer Account

Establishes the customer record that policies attach to, with identity
verification and duplicate detection before the first policy is bound
(policy/auto-policy/bind-policy.feature.md).

## Account creation is blocked on a watchlist hit @v1 [published]

- **Given** a prospect whose name and date of birth match an OFAC sanctions list entry
- **When** the screening step runs
- **Then** account creation is suspended and no policy may be bound
- **And** the case is routed to the compliance queue for manual adjudication

## Commercial account requires an entity identifier @v1 [proposed]

- **Given** an application from Harbor Logistics LLC
- **When** the account is created as a commercial entity
- **Then** a federal employer identification number and legal entity type are required
- **And** a doing-business-as name may be recorded alongside the legal name

## Communication preferences captured at creation @v1 [published]

- **Given** a new account with an email address and a mobile number
- **When** the customer elects paperless delivery
- **Then** the elections are stored and a confirmation email is sent to verify the address
- **And** paperless delivery does not take effect until the email address is verified

## Create an account for a new personal lines customer @v1 [published]

- **Given** a prospect supplying full name, date of birth, and a residential address in Ohio
- **When** the account is created
- **Then** a customer number is assigned and the account is set to active
- **And** the address is standardized against the postal database before it is stored

## Duplicate detection surfaces an existing account @v1 [published]

- **Given** an existing account for Marcus Lindell at 418 Weller Ave with the same date of birth
- **When** a representative attempts to create a second account with matching details
- **Then** the existing account is surfaced with a match confidence of 96%
- **And** the representative must either use the existing account or record a reason for creating a new one

## Incomplete account expires after 30 days @v1 [proposed]

- **Given** an account created but never attached to a bound policy
- **When** 30 days pass with no activity
- **Then** the account is closed as abandoned
- **And** the record is retained for duplicate matching but excluded from marketing lists

## Minor cannot be the first named insured @v1 [proposed]

- **Given** a prospect whose date of birth indicates an age of 17
- **When** the account is submitted as a first named insured
- **Then** the submission is rejected with reason "first named insured must be of legal age"
- **And** the prospect may be added as a listed driver on a parent's account instead
