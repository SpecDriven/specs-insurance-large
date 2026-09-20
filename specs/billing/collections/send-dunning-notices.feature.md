# Send Dunning Notices

The escalating sequence of reminders, late notices, and final demands
sent while a balance ages. Content and timing vary by state and by the
insured's elected delivery channel.

[Jira:PC-1190](https://jira.com/PC-1190)

## Courtesy reminder 5 days before the due date @v1 [published]

- **Given** an installment due in 5 days with no payment received
- **When** the notice job runs
- **Then** a courtesy reminder is sent by the insured's elected channel
- **And** no fee or aging consequence is recorded

## Email bounce falls back to print @v1 [published]

- **Given** a dunning notice sent to an address that hard bounces
- **When** the bounce is received
- **Then** the same notice is queued for print within 1 business day
- **And** the email address is flagged invalid on the account

## Escalation stops when the balance is cured @v1 [published]

- **Given** an account scheduled to receive a second dunning notice tomorrow
- **When** full payment posts today
- **Then** the pending notice is cancelled before generation
- **And** a paid-in-full confirmation is sent instead

## Final demand requires physical mail in New York @v1 [proposed]

- **Given** a New York policy at 31 days past due with email-only delivery elected
- **When** the final demand notice is produced
- **Then** the notice is sent by first class mail regardless of the elected channel
- **And** an affidavit of mailing is stored with the policy file

## Lienholder receives a copy of the cancellation notice @v1 [proposed]

- **Given** an auto policy with Summit Credit Union listed as lienholder
- **When** the nonpayment cancellation notice is issued
- **Then** a copy is sent to the lienholder at its address of record
- **And** the lienholder copy is logged separately from the insured's

## Suppress notices during a declared catastrophe moratorium @v1 [proposed]

- **Given** a state insurance department moratorium covering the insured's county
- **When** the dunning sequence would advance
- **Then** all notices and cancellations are suspended for the moratorium period
- **And** the suspension reason and DOI bulletin number are recorded on the account
