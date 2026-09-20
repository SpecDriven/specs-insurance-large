# Quote Commercial Auto Policy

Rating and quoting for the Acme Business Auto Coverage Form (CA 00 01).
An agent submits vehicle, driver, and operations data and receives an
annual premium that can be bound or referred to an underwriter.

## Basic business auto quote for a single power unit @v1 [published]

- **Given** an applicant operates one 2021 Ford Transit 250 registered in Ohio
- **And** the applicant provides a garaging address and a named driver with a valid CDL-exempt license
- **When** the agent requests a quote
- **Then** a twelve-month premium is quoted for each liability limit option

| liability limit | comprehensive deductible | collision deductible | annual premium |
| --------------- | ------------------------ | -------------------- | -------------- |
| $500,000 CSL    | $1,000                   | $1,000               | $2,140         |
| $1,000,000 CSL  | $1,000                   | $1,000               | $2,780         |
| $1,000,000 CSL  | $500                     | $500                 | $3,115         |

## Commercial auto quote expires after 30 days @v1 [published]

- **Given** a quote issued on March 3, 2026
- **When** April 3, 2026 passes without the quote being bound
- **Then** the quote is marked expired
- **And** the agent must requote against current rates before binding

## Decline applicant hauling hazardous materials @v1 [published]

- **Given** an applicant's described operations include transporting Class 3 flammable liquids
- **When** the agent requests a quote
- **Then** no quote is offered
- **And** the decline reason "hazmat operations outside appetite" is recorded

## Driver under 21 surcharges the quote @v1 [proposed]

- **Given** a listed driver is 19 years old
- **And** the driver is assigned to a light truck used for local delivery
- **When** the agent requests a quote
- **Then** a 25% inexperienced operator surcharge is applied to the liability premium
- **And** the surcharge is itemized on the quote worksheet

## Fleet of ten or more units routes to underwriting @v1 [proposed]

- **Given** an application lists 12 power units
- **When** the agent requests a quote
- **Then** the submission is referred to a commercial lines underwriter
- **And** an indication rather than a bindable premium is returned
- **And** the agent is told a completed vehicle schedule is required (schedule-fleet-vehicles.feature.md)

## Symbol 7 restricts liability to scheduled autos @v1 [published]

- **Given** an applicant selects covered auto symbol 7 for liability
- **When** the agent requests a quote
- **Then** only the autos listed on the vehicle schedule are rated for liability
- **And** the quote notes that newly acquired autos are not automatically covered

## Unverified MVR blocks the quote @v1 [published]

- **Given** a listed driver's motor vehicle record cannot be returned by the state of Georgia
- **When** the agent requests a quote
- **Then** the quote is held in a pending state
- **And** the agent is prompted to supply a self-reported driving history or remove the driver
