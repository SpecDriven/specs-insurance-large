# Issue Certificate of Insurance

Certificates evidence coverage to third parties. A certificate confers no
rights and does not amend the policy; coverage changes require an
endorsement (add-additional-insured.feature.md).

## Certificate cannot show limits higher than the policy @v1 [published]

- **Given** a policy with a $1,000,000 general aggregate
- **When** the agent enters a $3,000,000 aggregate on the certificate
- **Then** the certificate is rejected
- **And** the agent is shown the bound limits from the declarations

## Certificate for an expired policy is blocked @v1 [published]

- **Given** a policy that expired on June 30 and was not renewed
- **When** the agent requests a certificate on July 9
- **Then** issuance is blocked
- **And** the agent is prompted to issue against the replacement policy if one exists

## Certificate holders are notified when the policy cancels @v1 [published]

- **Given** 14 recorded certificate holders on a policy
- **When** the policy is cancelled effective December 1
- **Then** a cancellation notice is mailed to each recorded holder
- **And** the mailing is logged with a date and address for each holder

## Holder requests a 30-day notice of cancellation @v1 [proposed]

- **Given** a certificate holder demanding unconditional 30-day notice of cancellation
- **When** the request is reviewed
- **Then** the agent is told Acme will endeavor to notify but accepts no obligation
- **And** the standard ACORD cancellation wording is retained

## Issue a standard ACORD 25 certificate @v1 [published]

- **Given** an in-force general liability policy with a $1,000,000 occurrence limit
- **When** the agent issues a certificate to a property manager
- **Then** an ACORD 25 is produced showing the carrier, policy number, limits, and effective dates
- **And** the certificate holder is recorded on the policy

## Reissue a certificate after a mid-term limit increase @v1 [proposed]

- **Given** an endorsement raising the occurrence limit from $1,000,000 to $2,000,000 on October 1
- **When** the endorsement is processed
- **Then** updated certificates are generated for all recorded holders
- **And** each reissued certificate shows the October 1 endorsement date
