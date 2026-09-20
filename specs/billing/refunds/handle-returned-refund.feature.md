# Handle a Returned Refund

Manages refund checks and electronic credits that come back undelivered,
uncashed, or rejected, and keeps the funds recoverable until the insured
is located.

## Reissue after the insured supplies a new address @v1 [proposed]

- **Given** a voided refund of $756 held as an account credit
- **When** the insured confirms a new mailing address through the service center
- **Then** a replacement check is issued to the confirmed address
- **And** the original check number is cross-referenced on the reissue for audit

## Reissue is blocked while the address is unverified @v1 [published]

- **Given** an account with a bad-address flag and a held refund credit
- **When** a representative attempts to reissue the refund
- **Then** the reissue is blocked until the address flag is cleared
- **And** the representative is prompted to complete address verification first

## Returned electronic credit reverts to the original balance @v1 [proposed]

- **Given** a card refund rejected by the issuer because the account was closed
- **When** the rejection is received
- **Then** the refund is reversed and the credit is restored to the account
- **And** an outreach task is created to obtain alternate refund instructions

## Stale-dated check is voided after 180 days @v1 [published]

- **Given** a refund check issued 181 days ago and never presented for payment
- **When** the stale check job runs
- **Then** the check is voided and the credit is returned to the account
- **And** the item enters the unclaimed property tracking population (process-escheatment.feature.md)

## Undeliverable refund check is voided and held @v1 [published]

- **Given** a $756 refund check returned by the postal service as undeliverable
- **When** the returned mail is logged
- **Then** the check is voided and the funds are restored as an account credit
- **And** the mailing address is flagged as bad pending verification
