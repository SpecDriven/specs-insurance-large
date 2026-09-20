# Classify Payroll by Class Code

Payroll is assigned to workers compensation class codes that describe the
business, not the individual job. Classification errors surface at audit
(run-premium-audit.feature.md).

## Assign payroll to the governing classification @v1 [published]

- **Given** a plumbing contractor with $1,240,000 of field payroll
- **When** the payroll is classified
- **Then** class code 5183 is assigned to the field payroll
- **And** the governing classification is recorded on the information page

## Contested reclassification is escalated to the bureau @v1 [proposed]

- **Given** an auditor who moves $700,000 of payroll from 8810 to 5403
- **When** the insured disputes the change in writing
- **Then** the classification question is submitted to the rating bureau for an inspection
- **And** the disputed premium is not referred to collections while the inspection is pending

## Division of payroll requires verifiable records @v1 [published]

- **Given** an employee who works part of each week in the shop and part in the office
- **When** the employer cannot produce records separating the hours
- **Then** all of that employee's payroll is assigned to the higher-rated class

## Executive officer payroll is capped @v1 [published]

- **Given** an included corporate officer earning $340,000 annually
- **And** a state weekly maximum of $2,600
- **When** payroll is classified
- **Then** the officer's payroll is capped at $135,200 for rating

## Overtime is included at straight time @v1 [proposed]

- **Given** an employee paid $18,000 in overtime at time and a half
- **When** payroll is classified
- **Then** $12,000 is included in the rating basis
- **And** the $6,000 premium portion of the overtime is excluded

## Standard exception classes are split out @v1 [published]

- **Given** an office bookkeeper and two outside salespersons at a manufacturing risk
- **When** the payroll is classified
- **Then** clerical payroll is assigned to 8810 and outside sales to 8742
- **And** the remaining payroll stays in the manufacturing class
