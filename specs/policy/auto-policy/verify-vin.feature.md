# Verify Vehicle Identification Number

VIN validation and decode at quote and at endorsement. A decoded VIN
supplies the symbol, body style, and safety equipment used in rating
(rate-auto-territory.feature.md).

[Jira:INS-418](https://jira.com/INS-418)

## Check-digit failure rejects the VIN @v1 [published]

- **Given** a 17-character VIN whose ninth position fails the ISO 3779 check-digit test
- **When** the VIN is validated
- **Then** the entry is rejected with message "VIN check digit does not match"
- **And** the user is offered year, make, and model entry as an alternative

## Decode service timeout falls back to manual entry @v1 [proposed]

- **Given** the VIN decode service does not respond within 4 seconds
- **When** the quote continues
- **Then** the vehicle is captured from user-entered year, make, model, and trim
- **And** the quote is flagged for symbol verification before bind (bind-policy.feature.md)

## Duplicate VIN on an active policy raises a conflict @v1 [published]

- **Given** the VIN is already listed on another in-force Acme policy
- **When** the vehicle is added
- **Then** the request is blocked with reason "vehicle already insured"
- **And** an SIU referral is created when the named insureds differ

## Pre-1981 vehicle bypasses length validation @v1 [published]

- **Given** a 1968 model-year vehicle with an 11-character VIN
- **When** the VIN is validated
- **Then** the length rule is waived for model years before 1981
- **And** the vehicle is symbolled manually by an underwriter

## Salvage-branded title blocks physical damage coverage @v1 [proposed]

- **Given** a decoded VIN whose title history returns a salvage brand
- **When** the prospect selects collision and comprehensive
- **Then** physical damage coverage is declined for that vehicle
- **And** liability-only coverage remains available

## Seventeen-character VIN decodes to a rated symbol @v1 [published]

- **Given** a prospect enters VIN 1HGCM82633A004352
- **When** the VIN is submitted to the decode service
- **Then** the vehicle is identified as a 2003 Honda Accord EX sedan
- **And** physical damage symbol 14 and liability symbol 9 are assigned
