# Issue Claim Payment

[Jira:PC-1157](https://jira.com/PC-1157)

Payment issuance, payee naming, and the controls that sit between an
approved settlement and a released draft.

## Direct payment to a repair vendor under an assignment @v1 [published]

- **Given** a signed assignment of benefits from the insured to a mitigation vendor
- **When** the vendor invoice of $6,320 is approved
- **Then** payment is issued directly to the vendor as sole payee
- **And** the assignment document is validated against the state's assignment of benefits requirements

## Duplicate payment detected before release @v1 [proposed]

- **Given** a prior payment of $14,750 to the same payee on the same claim in the last 5 days
- **When** an identical payment is submitted
- **Then** the release is blocked and a duplicate warning is presented to the adjuster
- **And** the adjuster must record an override reason to proceed

## Electronic funds transfer elected by the insured @v1 [proposed]

- **Given** an insured who has enrolled in electronic payment and verified a bank account with a micro-deposit
- **When** a settlement is released
- **Then** funds are sent by ACH and settle within 2 banking days
- **And** no account or routing number appears in any claim note or correspondence

## Overpayment recovered from the insured @v1 [proposed]

- **Given** $9,400 paid where the correct entitlement was $7,100
- **When** the overpayment is identified during the file audit
- **Then** a recovery demand for $2,300 is issued with a 30-day response window
- **And** the receivable is recorded against the claim so incurred loss reflects the net amount

## Payment exceeds the adjuster's authority @v1 [published]

- **Given** an Adjuster II with $15,000 payment authority
- **When** a $41,000 payment is submitted for release
- **Then** the payment is held in the approval queue for a claims manager
- **And** the payment cannot be released until the approving user is different from the requesting user

## Payment stopped by a state prompt-payment rule @v1 [proposed]

- **Given** a state requiring payment within 30 days of an agreed settlement
- **When** day 28 arrives with the draft not yet released
- **Then** the file escalates to the payments supervisor for same-day release
- **And** statutory interest is calculated and added if the deadline is missed

## Single-payee draft to the named insured @v1 [published]

- **Given** an approved settlement of $14,750 with no mortgagee and no vendor assignment
- **When** the adjuster releases payment
- **Then** a draft is issued payable to the first named insured
- **And** the deductible is netted from the gross settlement before issuance
- **And** an explanation of payment itemizing indemnity and deductible accompanies the draft
