# Generate Declarations Page

The declarations page states who is insured, what is covered, for how
much, and for what period. It is the document an insured, a lender, or a
court reads first.

**Assigned:** Miguel Santos

## Attached forms are listed by number and edition @v1 [proposed]

- **Given** a policy with four attached endorsements
- **When** the declarations page is generated
- **Then** a schedule of forms lists each form number with its edition date
- **And** the list matches the assembled form set exactly (../forms/attach-policy-forms.feature.md)

## Backdated effective date requires a no-known-loss statement @v1 [published]

- **Given** a policy issued on 8 May 2026 with a requested effective date of 1 May 2026
- **When** the declarations page is generated
- **Then** generation is held until a signed no-known-loss statement is on file
- **And** the statement is retained with the policy record

## Corrected declarations supersede the original @v1 [proposed]

- **Given** a declarations page issued with a misspelled named insured
- **When** a corrected declarations page is generated
- **Then** it is marked "corrected copy" with the original issue date shown
- **And** the superseded version is retained but no longer presented as current

## Coverage limits and deductibles print per vehicle @v1 [proposed]

- **Given** a policy covering a 2021 Honda CR-V and a 2018 Ford F-150
- **When** the declarations page is generated
- **Then** each vehicle shows its own collision and comprehensive deductibles
- **And** liability limits of 100/300/100 are shown once as policy-level coverage

## Declarations page states the named insured and policy period @v1 [published]

- **Given** a personal auto policy bound effective 1 July 2026 for a six-month term
- **When** the declarations page is generated
- **Then** the first named insured, mailing address, and policy period 1 July 2026 to 1 January 2027 are printed
- **And** the policy period is stated as beginning and ending at 12:01 a.m. standard time at the mailing address

## Lienholder and additional interests are shown @v1 [published]

- **Given** a financed vehicle with a lienholder and a leasing company as additional insured
- **When** the declarations page is generated
- **Then** both interests print with their names, addresses, and the vehicle they attach to
- **And** each interest receives its own copy of the declarations page

## Premium summary reconciles to the billed amount @v1 [published]

- **Given** a six-month premium of $684 with a $40 policy fee and a 15% good-driver discount already applied
- **When** the declarations page is generated
- **Then** the total premium shown equals the amount sent to billing (billing/collect-premium.feature.md)
- **And** each discount is listed as a separate line item
