# Track Proof of Mailing

When a cancellation is challenged, the carrier must prove the notice was
mailed and when. Proof of mailing is the evidentiary record behind every
statutory notice (generate-notice-letter.feature.md).

## Certificate of mailing is captured for statutory notices @v1 [published]

- **Given** a batch of 340 cancellation notices released to the print vendor on 2 June 2026
- **When** the vendor deposits the batch with the postal service
- **Then** a certificate of mailing is returned and stored against each policy
- **And** the postmark date becomes the notice mailing date of record

## Electronic delivery substitutes a delivery receipt @v1 [proposed]

- **Given** an insured enrolled in electronic delivery who has consented to electronic notices
- **When** a statutory notice is delivered electronically
- **Then** the delivery receipt and the consent record together serve as proof
- **And** a bounced electronic delivery falls back to physical mail with a fresh notice period

## Mailing date drives the notice effective date @v1 [proposed]

- **Given** a notice generated on 1 June 2026 but not deposited until 3 June 2026
- **When** the certificate of mailing is recorded
- **Then** the 10-day notice period runs from 3 June 2026
- **And** the cancellation effective date is advanced accordingly

## Missing certificate blocks the cancellation from taking effect @v1 [published]

- **Given** a cancellation scheduled to take effect 12 June 2026
- **When** no certificate of mailing has been recorded by 11 June 2026
- **Then** the cancellation is held and does not take effect on schedule
- **And** the compliance team is alerted to remail the notice

## Proof is retained for the regulatory retention period @v1 [published]

- **Given** a certificate of mailing recorded 4 years ago
- **When** a DOI complaint is opened on the cancellation
- **Then** the certificate and the exact notice text are retrievable
- **And** proof of mailing is retained for 7 years from the mailing date

## Returned mail is recorded without invalidating the mailing @v1 [proposed]

- **Given** a notice mailed to the last known address on file
- **When** the envelope is returned marked "no forwarding address"
- **Then** the return is recorded on the policy
- **And** the original mailing remains valid proof for the statutory notice
