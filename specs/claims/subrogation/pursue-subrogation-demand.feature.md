# Pursue Subrogation Demand

Issuing and following a recovery demand against the at-fault party or its
carrier.

**Assigned:** Miguel Santos

## Adverse carrier disputes liability @v1 [published]

- **Given** a demand answered with a denial asserting the insured ran a red light
- **When** the denial is reviewed
- **Then** the adverse carrier's evidence is requested and the file is re-evaluated for comparative fault
- **And** the insured is contacted for a recorded statement if none is on file

## Demand is time-barred @v1 [proposed]

- **Given** a referral whose calendared limitations date passed 11 days ago
- **When** an adjuster attempts to issue the demand
- **Then** the demand is blocked and the file is routed to the recovery manager
- **And** a missed-limitations incident record is opened for quality review

## Demand package is issued to the adverse carrier @v1 [published]

- **Given** an accepted subrogation referral with $11,400 in paid indemnity and a $1,000 insured deductible
- **When** the demand is issued
- **Then** a demand for $12,400 is transmitted with the estimate, photos, police report, and proof of payment
- **And** a 30-day response diary is set

## No response after two demands escalates @v1 [published]

- **Given** an initial demand and a second demand sent 30 days apart
- **When** 75 days pass with no acknowledgment
- **Then** the file is escalated to intercompany arbitration or counsel review (arbitrate-intercompany-dispute.feature.md)

## Partial payment is accepted under protest @v1 [proposed]

- **Given** a demand of $12,400 answered with a $7,000 offer on a 60/40 liability split
- **When** the offer is evaluated against the file's own liability assessment
- **Then** a counter-demand is issued at $9,920 reflecting an 80% recoverable share

## Uninsured tortfeasor moves to direct collection @v1 [proposed]

- **Given** an at-fault driver confirmed uninsured with verified employment
- **When** the demand is issued directly to the individual
- **Then** an installment payment arrangement of no fewer than 12 months may be offered
- **And** a signed promissory note is required before the first installment is accepted
