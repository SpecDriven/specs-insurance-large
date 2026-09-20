# Enroll in Electronic Delivery

Electronic delivery of policy documents requires affirmative consent that
meets federal electronic-records requirements, plus a state-by-state view
of which documents may be delivered electronically at all.

## Certain documents are always mailed @v1 [published]

- **Given** an enrolled insured in a state that requires physical mailing of cancellation notices
- **When** a cancellation notice is generated (../correspondence/generate-notice-letter.feature.md)
- **Then** the notice is mailed regardless of the enrollment
- **And** an electronic courtesy copy may also be sent

## Consent applies per policy, not per household @v1 [proposed]

- **Given** an insured enrolled in electronic delivery on an auto policy
- **When** the same insured binds a separate homeowners policy
- **Then** the homeowners policy defaults to paper delivery
- **And** the insured is offered enrollment during the homeowners bind

## Delivery notification links to the document portal @v1 [published]

- **Given** an assembled policy packet for an enrolled insured
- **When** the packet is released
- **Then** an email is sent containing a link rather than the documents as attachments
- **And** the link requires the insured to authenticate before the packet is shown

## Documents remain available for the retention period @v1 [proposed]

- **Given** a policy cancelled 18 months ago
- **When** the former insured signs in to the document portal
- **Then** every document delivered during the policy term is still retrievable
- **And** documents remain available for 7 years from the date of delivery

## Hard bounce reverts the policy to paper @v1 [proposed]

- **Given** an enrolled policy whose delivery email hard-bounces twice in a row
- **When** the second bounce is recorded
- **Then** electronic delivery is suspended and paper delivery resumes
- **And** the insured is asked to confirm a current email address

## Insured consents to electronic delivery @v1 [published]

- **Given** a named insured reviewing the electronic delivery disclosure
- **When** the insured consents and demonstrates the ability to open a sample document
- **Then** electronic delivery is enabled for the policy
- **And** the consent record captures the email address, timestamp, and disclosure version

## Withdrawal of consent takes effect on the next document @v1 [published]

- **Given** an enrolled insured who withdraws consent on 5 May 2026
- **When** the next policy document is produced
- **Then** the document is printed and mailed
- **And** no fee is charged for returning to paper delivery
