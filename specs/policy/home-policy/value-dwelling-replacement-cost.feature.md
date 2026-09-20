# Value Dwelling Replacement Cost

Estimating the cost to rebuild the dwelling, which sets Coverage A and the
coinsurance test. Replacement cost is a construction estimate, not market
value or purchase price.

## Coverage A below 80% of replacement cost triggers coinsurance @v1 [published]

- **Given** a replacement cost of $438,000 and a selected Coverage A of $300,000
- **When** the coinsurance test is run
- **Then** the policy fails the 80% test at 68.5%
- **And** partial losses are settled at the coinsurance ratio rather than in full

## Estimator produces a replacement cost from construction inputs @v1 [published]

- **Given** a 2,180 square foot two-story dwelling built in 1994 with brick veneer
- **And** a finished basement and an attached two-car garage
- **When** the valuation estimator runs
- **Then** a replacement cost of $438,000 is returned with a regional labour multiplier of 1.07
- **And** the estimate is stored with the quote for 90 days

## Extended replacement cost adds a rebuilding cushion @v1 [proposed]

- **Given** a policy with Coverage A of $438,000 and the 25% extended replacement cost endorsement
- **When** a total loss exceeds the Coverage A limit after a regional catastrophe
- **Then** up to $547,500 is available for the dwelling rebuild
- **And** the extension does not apply to Coverage B or Coverage C

## Historic dwelling is valued on a functional replacement basis @v1 [proposed]

- **Given** a 1908 dwelling with plaster walls, leaded glass, and hand-milled trim
- **When** the estimator cannot source equivalent materials
- **Then** the dwelling is valued on a functional replacement cost basis
- **And** the functional basis is disclosed on the declarations page

## Market value below replacement cost does not reduce Coverage A @v1 [published]

- **Given** a dwelling with a county appraised market value of $260,000
- **And** a replacement cost estimate of $438,000
- **When** the applicant asks to insure to market value
- **Then** Coverage A remains at the replacement cost estimate
- **And** the difference between market value and rebuild cost is explained in writing

## Stale estimate is refreshed before renewal @v1 [published]

- **Given** a replacement cost estimate last refreshed 38 months ago
- **When** the renewal is prepared
- **Then** the estimator is rerun with current construction cost indices
- **And** Coverage A is adjusted where the refreshed estimate differs by more than 10%
