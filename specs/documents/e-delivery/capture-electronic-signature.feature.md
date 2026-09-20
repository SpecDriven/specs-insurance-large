# Capture Electronic Signature

Applications, coverage rejections, and no-known-loss statements can be
signed electronically. The signed artifact must be tamper-evident and tied
to an identifiable signer.

[Jira:ABC-778](https://jira.com/ABC-778)

## Applicant signs the application electronically @v1 [published]

- **Given** an applicant presented with a completed personal auto application
- **When** the applicant adopts a signature and submits
- **Then** the signed application is stored with a tamper-evident seal
- **And** the signature record captures the signer's name, email, timestamp, and internet protocol address

## Coverage rejection requires a separate signature @v1 [proposed]

- **Given** an applicant declining uninsured motorist coverage in Ohio
- **When** the application is signed
- **Then** the uninsured motorist rejection is signed as its own document
- **And** a single signature on the application does not satisfy the rejection requirement

## Declined signature stops the transaction cleanly @v1 [published]

- **Given** a signer who selects decline to sign
- **When** the decline is recorded
- **Then** the bundle closes as declined with the signer's stated reason
- **And** the quote remains available for the producer to revise (../../distribution/agent-portal/start-quote-in-portal.feature.md)

## Every required signer must sign before the bundle completes @v1 [published]

- **Given** a signature bundle requiring the first named insured and a second named insured
- **When** only the first named insured signs
- **Then** the bundle stays incomplete and the policy cannot bind
- **And** a reminder is sent to the outstanding signer after 48 hours

## Signed document is verifiable after the fact @v1 [proposed]

- **Given** a coverage rejection signed 2 years ago and now disputed in a claim
- **When** the claim handler retrieves the document
- **Then** the seal is validated and any alteration since signing is detectable
- **And** the full audit trail of the signing session accompanies the document

## Unsigned bundle expires and voids @v1 [proposed]

- **Given** a signature request sent on 1 March 2026 with a 14-day validity
- **When** 15 March 2026 arrives with signatures outstanding
- **Then** the bundle is voided and the links stop working
- **And** a new bundle must be generated from the current application data
