# Bind Homeowners Policy

Converting an accepted HO-3 quote into an in-force contract
(quote-homeowners-policy.feature.md). Binding requires a completed
application, an inspection order, and the first payment.

**Assigned:** Jonas Berg

## Bind is blocked when the effective date precedes today @v1 [published]

- **Given** a quote with a requested effective date two days in the past
- **When** the agent attempts to bind
- **Then** the bind is blocked with reason "no backdated inception on new business"
- **And** the earliest permitted effective date is set to today

## Coverage A selection drives the other coverage limits @v1 [proposed]

- **Given** an applicant selects a Coverage A limit at bind
- **When** the policy is issued
- **Then** Coverages B, C, and D are set as filed percentages of Coverage A

| coverage                     | basis            | default |
| ---------------------------- | ---------------- | ------- |
| B — Other structures         | % of Coverage A  | 10%     |
| C — Personal property        | % of Coverage A  | 50%     |
| D — Loss of use              | % of Coverage A  | 20%     |
| E — Personal liability       | flat limit       | $300,000|
| F — Medical payments         | flat limit       | $5,000  |

## Mortgagee clause is recorded at bind @v1 [proposed]

- **Given** a dwelling financed by Harbor Ridge Bank, loan 44-889201
- **When** the policy is bound
- **Then** the mortgagee is added as first mortgagee with its standard clause
- **And** an evidence of insurance is transmitted to the lender within 1 business day
- **And** the annual premium is flagged for escrow billing

## Named storm moratorium suspends binding authority @v1 [published]

- **Given** a named tropical storm with a watch posted for the risk county
- **When** a bind is attempted for a dwelling in that county
- **Then** binding authority is suspended until 24 hours after the watch is lifted
- **And** the quote remains valid and its rates are held for 15 days

## Quote binds with the first installment received @v1 [published]

- **Given** an accepted HO-3 quote with a $1,840 annual premium
- **When** the applicant signs the application and pays the $320 down payment
- **Then** the policy is issued effective the requested date at 12:01 a.m. local time
- **And** a declarations page listing Coverage A through F is delivered electronically

## Replacement cost below the minimum insurable value is declined @v1 [proposed]

- **Given** an estimated replacement cost of $62,000
- **And** the HO-3 program requires a minimum Coverage A of $100,000
- **When** the bind is attempted
- **Then** the risk is declined for the HO-3 program
- **And** the applicant is referred to the dwelling fire program

## Roof over 20 years requires an inspection before bind @v1 [published]

- **Given** a dwelling with a composition shingle roof installed in 2003
- **When** the agent requests to bind
- **Then** the policy is bound conditionally for 60 days
- **And** a four-point inspection is ordered
- **And** coverage converts to actual cash value on the roof if the inspection is not returned
