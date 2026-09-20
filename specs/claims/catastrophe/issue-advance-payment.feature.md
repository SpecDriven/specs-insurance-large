# Issue Catastrophe Advance Payment

Getting money to displaced insureds quickly after a declared event, before
a full inspection and scope are complete.

## Additional living expense advance after a total loss @v1 [published]

- **Given** a dwelling in a declared CAT event reported as uninhabitable
- **And** a homeowners policy with Coverage D additional living expense
- **When** the insured requests emergency funds
- **Then** a $5,000 ALE advance is issued without a completed inspection
- **And** the advance is recorded against the Coverage D limit, not as an extra-contractual payment

## Advance is capped by the coverage limit @v1 [published]

- **Given** a Coverage D limit of $18,000 with $16,200 already advanced
- **When** a further $4,000 advance is requested
- **Then** only $1,800 is authorized
- **And** the insured is told in writing that the Coverage D limit is nearly exhausted

## Advance offsets the final settlement @v1 [proposed]

- **Given** advances totaling $32,000 on a Coverage A exposure
- **When** the final replacement cost settlement of $148,000 is calculated
- **Then** the net payment is $116,000
- **And** the settlement statement itemizes each prior advance with its date

## Advance requested on a policy cancelled before the loss @v1 [proposed]

- **Given** a policy cancelled for nonpayment effective 9 days before the CAT loss date
- **When** an advance is requested
- **Then** no advance is issued
- **And** a coverage-not-in-force letter is sent citing the cancellation effective date

## Identity verification fails before funds are released @v1 [proposed]

- **Given** a request to send an advance to a bank account that does not match the named insured
- **When** the payment is staged
- **Then** the payment is held and routed to the fraud desk (fraud-siu/detection/score-claim-fraud-risk.feature.md)
- **And** the insured is contacted on the phone number of record to confirm the instruction

## Mortgagee is added to a dwelling advance @v1 [published]

- **Given** a Coverage A advance of $25,000 on a mortgaged dwelling
- **When** the draft is prepared
- **Then** the first mortgagee shown on the declarations page is named as a co-payee
- **And** the loss-draft instructions for that lender are attached to the payment record
