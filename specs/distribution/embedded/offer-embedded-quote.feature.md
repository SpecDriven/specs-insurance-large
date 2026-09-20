# Offer an Embedded Quote at Point of Sale

Acme offers coverage inside partner checkout flows — dealership finance
desks, apartment leasing portals, and marine dealers. The partner passes
what it already knows and Acme returns a bindable price in one call
(integrate-partner-api.feature.md).

## Dealership passes a vehicle identification number for an auto quote @v1 [proposed]

- **Given** a dealership finance desk passing vehicle identification number 1HGCV1F32MA004821
- **And** the buyer's date of birth and garaging ZIP code
- **When** the embedded quote is requested
- **Then** vehicle year, make, model, and safety features are decoded from the identification number
- **And** a six-month premium is returned for the Standard plan only

## Embedded quote token expires in 24 hours @v1 [published]

- **Given** a quote token issued at 14:00 on 3 May 2026
- **When** the partner attempts to bind at 15:00 on 4 May 2026
- **Then** the bind is refused as an expired token
- **And** a fresh quote may be requested at current rates

## Partner may not see or alter rating factors @v1 [published]

- **Given** an embedded quote returned to a partner
- **When** the partner inspects the response payload
- **Then** only the premium, coverage summary, and a quote token are present
- **And** no rating factors, tier assignments, or credit-based attributes are disclosed

## Partner outage does not block the partner's own checkout @v1 [proposed]

- **Given** the embedded quote service is returning errors
- **When** the partner requests a quote
- **Then** the partner receives an empty offer response within 2 seconds
- **And** the partner's checkout continues without the insurance step

## Renters quote is offered inside a leasing checkout @v1 [published]

- **Given** a leasing portal passing the applicant's name, unit address, and lease start date of 1 June 2026
- **When** the partner requests an embedded quote
- **Then** a renters premium is returned with $15,000 personal property and $100,000 liability
- **And** the quote is valid until the lease start date

## Required disclosures are shown before the customer accepts @v1 [published]

- **Given** an embedded renters offer displayed in a partner checkout
- **When** the customer moves to accept coverage
- **Then** the state-required producer disclosure and the coverage summary are shown in the partner's flow
- **And** acceptance is not recorded until both are acknowledged

## Risk outside appetite returns a graceful no-offer @v1 [proposed]

- **Given** an embedded auto request for a driver with two at-fault accidents in the past 18 months
- **When** the partner requests a quote
- **Then** a no-offer response is returned without a decline reason
- **And** the partner is told to direct the customer to a licensed Acme representative
