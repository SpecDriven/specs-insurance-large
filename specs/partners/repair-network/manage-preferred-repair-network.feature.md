# Manage the Preferred Repair Network

Acme's direct repair program: the shops an adjuster may steer a claimant to,
the terms they accept, and the credentials they must keep current
(claims/auto-accidents/estimate-vehicle-damage.feature.md).

## Capacity throttling during a hail event @v1 [proposed]

- **Given** a hail catastrophe in the Denver service area
- **When** a shop's open assignment count reaches its declared weekly capacity of 40
- **Then** the shop stops appearing in assignment searches until its backlog drops
- **And** overflow claims are routed to the catastrophe drive-in facility

## Certification required for aluminium structural repair @v1 [published]

- **Given** a claim on an aluminium-bodied pickup requiring structural repair
- **When** the adjuster searches the network within 25 miles
- **Then** only shops holding the aluminium structural certification are offered
- **And** an empty result escalates to an out-of-network authorization

## Claimant may always choose a non-network shop @v1 [published]

- **Given** a claimant offered three network shops
- **When** the claimant selects an independent shop instead
- **Then** the claim proceeds with the independent shop at the prevailing competitive rate
- **And** the guaranteed repair warranty offered by network shops does not attach

## Expired garagekeepers coverage suspends the shop @v1 [published]

- **Given** a network shop whose garagekeepers certificate expired yesterday
- **When** the nightly credential check runs
- **Then** the shop is suspended from new assignments
- **And** vehicles already in the shop's care continue without interruption

## Onboard a shop into the program @v1 [published]

- **Given** a body shop in Boise with a current state registration and a $1M garagekeepers policy
- **When** the network manager executes the direct repair agreement
- **Then** the shop becomes eligible for assignment in the Boise service area
- **And** the agreed labour rate and paint material rate are stored on the shop record

## Terminating a shop for cause @v1 [proposed]

- **Given** a shop with three substantiated supplement-inflation findings in a rolling year
- **When** the network manager terminates the agreement for cause
- **Then** the shop is removed from the network effective immediately
- **And** the termination reason is recorded and the shop is barred from reapplying for 24 months
