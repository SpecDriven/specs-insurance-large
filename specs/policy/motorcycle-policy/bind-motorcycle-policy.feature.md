# Bind Motorcycle Policy

Converting an accepted motorcycle quote (quote-motorcycle-policy.feature.md)
into an in-force policy, with lienholder and state filing obligations.

**Assigned:** Miguel Santos

## Bind a cruiser with full physical damage @v1 [published]

- **Given** an accepted quote for a 2022 touring cruiser with $500 comprehensive and collision deductibles
- **When** the applicant pays the down payment and signs the application
- **Then** the policy is issued effective the requested date and time
- **And** an ID card and the declarations page are delivered electronically

## Lienholder listed on the declarations page @v1 [published]

- **Given** a credit union holding a $16,400 note on the motorcycle
- **When** the policy is bound with physical damage coverage
- **Then** the credit union is recorded as lienholder on the declarations page
- **And** electronic proof of insurance is sent to the lienholder

## Seasonal bind outside the riding season @v1 [proposed]

- **Given** a Minnesota applicant binding on December 28
- **When** the policy is issued
- **Then** the full annual premium is charged with no seasonal suspension credit
- **And** the insured is offered a lay-up endorsement for the winter months

## SR-22 filing required before coverage is confirmed @v1 [published]

- **Given** an applicant under a state SR-22 financial responsibility requirement
- **When** the policy is bound
- **Then** the SR-22 is filed with the department of motor vehicles within 3 business days
- **And** the filing confirmation number is recorded on the policy

## Unendorsed rider on the application @v1 [proposed]

- **Given** the named insured holds a car license with no motorcycle endorsement
- **When** the bind request is submitted
- **Then** the bind is refused for lack of a valid motorcycle endorsement
- **And** the applicant may rebind once the endorsement is issued by the state

## VIN does not match the quoted motorcycle @v1 [proposed]

- **Given** a quote rated on a 650cc standard and a bind request carrying a 1200cc VIN
- **When** the VIN is decoded at bind
- **Then** the bind is stopped and the quote is returned for re-rating
- **And** the symbol and class code differences are shown to the agent
