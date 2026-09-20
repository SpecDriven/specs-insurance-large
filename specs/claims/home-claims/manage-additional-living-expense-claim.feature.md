# Manage Additional Living Expense Claim

Coverage D pays the necessary increase in living expenses when a covered
loss makes the residence unfit to live in, for the shortest time required to
repair or relocate.

## Coverage D limit exhausted before the rebuild completes @v1 [published]

- **Given** a Coverage D limit of $84,000 with $79,400 paid
- **When** the rebuild is projected to run two more months
- **Then** the insured is notified in writing 30 days before the limit is reached
- **And** payments stop at the limit unless a time-based provision extends the period

## Hotel authorized while the dwelling is uninhabitable @v1 [published]

- **Given** a fire loss that leaves the dwelling without power or a usable kitchen
- **When** the adjuster confirms the residence is unfit to live in
- **Then** hotel lodging and a per diem meal allowance are authorized for 14 days
- **And** only the increase over the household's normal expenses is reimbursable
- **And** the insured is told to retain receipts for every claimed expense

## Insured stays with family and claims no lodging cost @v1 [proposed]

- **Given** an insured who moves in with relatives at no rent
- **When** additional living expense is claimed
- **Then** only actual increased costs such as commuting, storage, and meals are reimbursed
- **And** no lodging allowance is paid because no lodging cost was incurred

## Loss of rental income on a tenant-occupied unit @v1 [proposed]

- **Given** a duplex where the insured occupies one unit and rents the other for $1,400 per month
- **When** both units are made uninhabitable by a covered loss
- **Then** the rented unit is paid as fair rental value, not additional living expense
- **And** expenses that do not continue during the loss are deducted from the rental value

## Transition from hotel to a comparable rental @v1 [published]

- **Given** a rebuild estimated at 7 months and a family of four displaced from a three-bedroom home
- **When** temporary housing is arranged beyond the first 30 days
- **Then** a comparable three-bedroom rental is authorized at a market rate of $2,650 per month
- **And** lease and utility setup costs are covered as necessary increased expenses

## Twelve-month time limitation reached @v1 [proposed]

- **Given** a policy form limiting Coverage D to 12 months regardless of remaining limit
- **When** month 12 ends with the dwelling still under repair
- **Then** additional living expense payments end on the anniversary of the loss
- **And** the remaining unused limit is not available after the period expires
