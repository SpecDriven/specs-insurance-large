# Manage Emergency Mitigation Services

Emergency services that prevent further damage after a covered loss. The
insured has a duty to mitigate; the carrier pays reasonable and necessary
mitigation whether or not the underlying claim later pays in full.

## Board-up and tarp after a storm @v1 [published]

- **Given** a wind loss with an open roof deck and broken windows
- **When** the insured requests emergency protection of the property
- **Then** board-up and tarp services are authorized as reasonable emergency measures
- **And** the cost applies against the Coverage A limit, not as an additional amount

## Insured fails to mitigate further damage @v1 [proposed]

- **Given** an insured who declines mitigation and leaves standing water for 11 days
- **When** secondary mold and subfloor damage develops
- **Then** the additional damage attributable to the delay is excluded under the duty to mitigate
- **And** the damage present at the time of the first inspection remains covered

## Mitigation invoice exceeds the authorization @v1 [published]

- **Given** an authorization of $5,000 and a vendor invoice of $11,800
- **When** the invoice is reviewed against the drying log
- **Then** equipment days beyond the documented drying period are disallowed
- **And** the vendor is given 15 days to substantiate the additional days

## Mitigation paid on a claim later denied @v1 [proposed]

- **Given** emergency mitigation of $3,400 already paid
- **When** the underlying loss is later denied under a policy exclusion (claims/home-claims/apply-policy-exclusions.feature.md)
- **Then** the mitigation payment is not recovered from the insured
- **And** the denial letter distinguishes the mitigation payment from any indemnity for the loss itself

## Water extraction dispatched within 24 hours @v1 [published]

- **Given** a reported burst supply line with standing water on two floors
- **When** the claim is opened
- **Then** a network mitigation vendor is dispatched within 24 hours
- **And** an initial mitigation authorization of $5,000 is issued
- **And** moisture readings and a drying log are required before any extension

## Water extraction dispatched within 24 hours @v2 [proposed]

Adds a same-day dispatch standard for catastrophe events to v1.

- **Given** a reported burst supply line with standing water on two floors
- **And** the loss falls inside a declared catastrophe event
- **When** the claim is opened
- **Then** a network mitigation vendor is dispatched the same calendar day
- **And** an initial mitigation authorization of $7,500 is issued for CAT-coded files
