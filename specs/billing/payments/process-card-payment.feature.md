# Process Card Payment

Accepts credit and debit card payments through the hosted payment page
and the service center, and posts the result to the account
(apply-payment-to-balance.feature.md).

## Approved card payment posts same day @v1 [published]

- **Given** an installment of $144 due today
- **When** the insured submits a Visa ending 4417 through the hosted payment page
- **Then** the authorization is captured and the payment posts with today's effective date
- **And** a confirmation number is displayed and emailed

## Card payment on a cancelled policy is routed for reinstatement review @v1 [published]

- **Given** a policy cancelled for nonpayment 4 days ago
- **When** a card payment for the full cancellation notice amount is received
- **Then** the funds are held in suspense rather than posted
- **And** an underwriting reinstatement review task is created

## Chargeback reverses the posted payment @v1 [proposed]

- **Given** a card payment of $517 posted 30 days ago
- **When** the processor reports a cardholder dispute chargeback
- **Then** the payment is reversed and the balance is restored as of the original posting date
- **And** a $20 returned payment fee is assessed to the account

## Convenience fee disclosed before authorization @v1 [proposed]

- **Given** a card payment initiated in a state where convenience fees are permitted
- **When** the insured reaches the confirmation step
- **Then** the $3.50 convenience fee is itemized separately from the premium
- **And** the payment cannot be submitted until the fee is acknowledged

## Convenience fee disclosed before authorization @v2 [proposed]

Suppresses the fee in states that prohibit it, added to v1.

- **Given** a card payment initiated by an insured with a Colorado garaging address
- **And** Colorado prohibits premium convenience fees
- **When** the insured reaches the confirmation step
- **Then** no convenience fee is shown or charged
- **And** the state fee rule applied is recorded on the transaction

## Declined card does not advance the due date @v1 [published]

- **Given** an installment due in 2 days
- **When** the card issuer returns decline code 51, insufficient funds
- **Then** no payment is posted and the balance is unchanged
- **And** the insured is shown the decline reason without the issuer's raw response text

## Payment exceeding the balance creates a credit @v1 [published]

- **Given** an account balance of $144
- **When** the insured authorizes a $200 card payment
- **Then** $144 is applied to the balance and $56 is held as an unapplied credit
- **And** the credit is applied to the next installment automatically
