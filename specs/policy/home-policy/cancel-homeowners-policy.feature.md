# Cancel Homeowners Policy

Termination of an HO-3 before expiration, whether requested by the insured
or initiated by the carrier. The calculation method depends on who
cancels and why.

## Cancellation after 60 days is limited to filed reasons @v1 [proposed]

- **Given** a policy in force for 190 days
- **When** underwriting seeks to cancel for a change in risk profile
- **Then** the cancellation is blocked unless the reason is a filed permissible reason
- **And** the alternative of non-renewal at expiration is offered instead

## Cancellation for non-payment follows the statutory notice @v1 [published]

- **Given** an installment 18 days past due
- **When** the cancellation notice is generated
- **Then** the notice states an effective date no earlier than 14 days from mailing
- **And** the mortgagee receives a duplicate notice
- **And** the policy remains in force through the notice period

## Cancellation is withdrawn when payment clears in the notice period @v1 [proposed]

- **Given** a pending non-payment cancellation with an effective date of August 9
- **When** the past-due amount clears on August 7
- **Then** the cancellation is withdrawn and coverage continues without interruption
- **And** a rescission-of-notice letter is sent to the insured and the mortgagee

## Carrier cancellation within the first 60 days @v1 [published]

- **Given** a policy in force for 34 days
- **And** an inspection revealing knob-and-tube wiring throughout the dwelling
- **When** underwriting cancels the policy
- **Then** 10 days' written notice is given to the named insured
- **And** the return premium is computed pro-rata

## Insured-requested cancellation is computed short-rate @v1 [published]

- **Given** an in-force HO-3 with 210 days remaining on the term
- **When** the named insured requests cancellation effective today
- **Then** the return premium is computed short-rate with a 10% penalty
- **And** the refund is issued within 15 days (billing/refund-unearned-premium.feature.md)

## Rescission for material misrepresentation voids the policy @v1 [proposed]

- **Given** an application stating the dwelling is owner-occupied
- **And** evidence that the dwelling has been a short-term rental since inception
- **When** the misrepresentation is confirmed
- **Then** the policy is rescinded from inception
- **And** all premium is returned and any open claim is denied
