# Negotiate Third-Party Settlement

Demand-and-offer handling on a bodily injury exposure, from first demand to
executed release. Liens are cleared separately
(resolve-medical-lien.feature.md).

[Jira:CLM-418](https://jira.com/CLM-418)

## Counteroffer stays inside granted authority @v1 [published]

- **Given** an evaluation range of $18,000 to $24,000 and granted authority of $24,000
- **When** the adjuster extends a counteroffer of $16,500 against a $60,000 demand
- **Then** the offer is recorded with the date, amount, and the claimant representative who received it

## Impasse converts the file to a litigation posture @v1 [published]

- **Given** three exchanges of offers with a $52,000 gap remaining
- **When** claimant's counsel states that suit will be filed
- **Then** the negotiation is closed as an impasse
- **And** the exposure is staged for defense counsel assignment (litigation/assign-defense-counsel.feature.md)

## Offer above authority is blocked @v1 [published]

- **Given** granted authority of $24,000
- **When** the adjuster attempts to extend $27,500 to close the file
- **Then** the offer is blocked and not transmitted
- **And** an authority request for $27,500 is routed to the claims manager

## Policy-limits demand with a response deadline @v1 [published]

- **Given** a 100/300 policy and a claimant demand for the full $100,000 per-person limit
- **And** the demand sets a 15-day acceptance window
- **When** the demand is logged
- **Then** the file is escalated to a claims manager the same business day
- **And** the named insured is notified of the limits demand in writing
- **And** a response is diaried three business days before the deadline

## Release signed by only one spouse on a loss-of-consortium claim @v1 [proposed]

- **Given** a settlement covering both the injured claimant and a derivative consortium claim
- **When** the returned release is executed by the injured claimant alone
- **Then** the payment is held pending the spouse's signature
- **And** the deficiency is communicated to claimant's counsel the same day

## Tendering limits on a multi-claimant occurrence @v1 [proposed]

- **Given** a $300,000 aggregate and claimant demands totaling $780,000
- **When** the carrier elects to tender the aggregate
- **Then** all claimants are invited to a global allocation conference
- **And** defense counsel is asked to evaluate an interpleader
- **And** the insured is advised in writing of the potential for an excess judgment

## Unrepresented claimant receives a cooling-off disclosure @v1 [proposed]

- **Given** an unrepresented claimant who verbally accepts $9,000
- **When** the settlement is documented
- **Then** the release packet includes the state-required disclosure and a rescission window
- **And** payment is not issued until the signed release is returned
