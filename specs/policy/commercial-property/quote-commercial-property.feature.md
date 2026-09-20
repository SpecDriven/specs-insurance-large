# Quote Commercial Property Policy

Rating and quoting on the building and personal property coverage form
(CP 00 10). Construction, occupancy, protection, and exposure drive the
rate applied to each scheduled location.

## Actual cash value valuation reduces the rate @v1 [proposed]

- **Given** a 1962 building with an estimated replacement cost of $900,000
- **When** the agent selects actual cash value valuation
- **Then** the rate is reduced by 12%
- **And** the quote warns that depreciation will be withheld at loss settlement

## Blanket limit across two buildings @v1 [proposed]

- **Given** two buildings at the same premises with values of $780,000 and $420,000
- **When** the agent selects a blanket building limit
- **Then** a single $1,200,000 blanket limit is quoted
- **And** a signed statement of values is required as a condition of binding

## Frame construction in a wildland-urban interface is referred @v1 [published]

- **Given** a frame building located in a wildfire hazard score 8 census block
- **When** the agent requests a quote
- **Then** the submission is referred to an underwriter
- **And** a wildfire mitigation questionnaire is requested

## Insurance to value below 80% warns before binding @v1 [proposed]

- **Given** a stated building limit of $600,000 against an estimated replacement cost of $1,050,000
- **When** the agent requests a quote
- **Then** the quote is returned with a coinsurance warning (apply-coinsurance.feature.md)
- **And** the agent must acknowledge the warning before binding

## Quote a single masonry non-combustible building @v1 [published]

- **Given** an applicant owns a 1998 masonry non-combustible retail building in Boise, Idaho
- **And** the building limit is $1,400,000 and business personal property is $260,000
- **When** the agent requests a quote
- **Then** an annual premium is quoted at replacement cost valuation
- **And** the quote shows causes of loss form CP 10 30 special

## Roof over 20 years old requires an inspection @v1 [published]

- **Given** a building whose roof was last replaced in 2003
- **When** the agent requests a quote
- **Then** the quote is issued subject to a satisfactory roof inspection within 45 days of binding
- **And** a windstorm or hail deductible of 2% of the building limit is applied

## Vacant building is declined @v1 [published]

- **Given** an applicant reports the building has been unoccupied for 9 months
- **When** the agent requests a quote
- **Then** no quote is offered
- **And** the decline reason "vacancy exceeds 60 days" is recorded
