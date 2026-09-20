# Evaluate General Damages

Valuation of pain and suffering on a bodily injury exposure, layered on top
of documented specials. Feeds the negotiation range used in
(negotiate-third-party-settlement.feature.md).

**Assigned:** Priya Raman

## Comparative negligence reduces the evaluated number @v1 [proposed]

- **Given** an evaluated gross value of $50,000
- **And** a liability assessment placing 30% fault on the claimant
- **When** the net evaluation is calculated in a modified comparative state
- **Then** the net evaluated value is recorded as $35,000

## Pre-existing degenerative condition is apportioned @v1 [proposed]

- **Given** an IME report attributing 60% of the claimant's lumbar complaints to pre-existing degeneration
- **When** general damages are evaluated
- **Then** only the aggravation component is valued
- **And** the IME apportionment is attached as the basis for the reduced range

## Soft-tissue injury valued on a specials multiplier @v1 [published]

- **Given** a claimant with $4,200 in medical specials and 6 weeks of chiropractic treatment
- **And** no objective findings on imaging
- **When** general damages are evaluated
- **Then** a multiplier band of 1.5x to 2.0x specials is applied
- **And** an evaluation range of $6,300 to $8,400 is recorded on the exposure

## Stale evaluation is recalculated before mediation @v1 [proposed]

- **Given** an evaluation last updated 210 days ago
- **When** a mediation date is scheduled
- **Then** the evaluation is flagged as stale and must be refreshed
- **And** no settlement authority is released against the stale figure

## Surgical injury escalates the evaluation band @v1 [published]

- **Given** a claimant with a documented L4-L5 discectomy and $68,000 in specials
- **When** general damages are evaluated
- **Then** the surgical band is used instead of the soft-tissue multiplier
- **And** the evaluation requires a supervisor's concurrence before authority is granted

## Venue severity adjusts the range @v1 [published]

- **Given** an evaluated general damages midpoint of $40,000
- **When** the venue factor for the claimant's county of suit is applied
- **Then** the range is adjusted by the published venue table

| venue tier | example county        | adjustment |
| ---------- | --------------------- | ---------- |
| Favorable  | Boone County, MO      | -20%       |
| Neutral    | Hamilton County, OH   | 0%         |
| Adverse    | Cook County, IL       | +35%       |
| Severe     | Philadelphia City, PA | +60%       |
