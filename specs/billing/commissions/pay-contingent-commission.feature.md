# Pay Contingent Commission

Calculates the annual profit-sharing bonus an agency earns when its book
meets volume and loss ratio targets under its contingent commission
agreement.

**Assigned:** Aisha Bello

## Adverse development reopens a paid bonus @v1 [proposed]

- **Given** a contingent bonus of $84,000 paid on a 48% loss ratio for the prior year
- **When** reserve strengthening on a single large claim moves the restated ratio to 57%
- **Then** the overpayment is recovered against future contingent bonuses, not current commissions
- **And** the agency is given written notice of the restatement

## Agency qualifies on volume and loss ratio @v1 [published]

- **Given** an agency with $2,400,000 of eligible written premium and a 48% loss ratio
- **And** the agreement requires $1,000,000 minimum premium and a loss ratio at or below 55%
- **When** the contingent calculation runs after the December 31 measurement date
- **Then** the agency qualifies and a bonus is computed from the payout grid

| loss ratio   | $1M–$2M premium | $2M–$5M premium | over $5M |
| ------------ | --------------- | --------------- | -------- |
| under 40%    | 4.0%            | 5.0%            | 6.0%     |
| 40% to 49.9% | 2.5%            | 3.5%            | 4.5%     |
| 50% to 55%   | 1.0%            | 1.5%            | 2.0%     |
| over 55%     | 0%              | 0%              | 0%       |

## Agreement termination forfeits the unpaid bonus @v1 [published]

- **Given** an agency that terminates its contract in October of the measurement year
- **And** the agreement requires an active appointment on the payment date
- **When** the contingent calculation runs the following March
- **Then** no bonus is paid for the partial year
- **And** the forfeiture reason cites the agreement clause applied

## Loss ratio uses incurred losses including IBNR @v1 [proposed]

- **Given** an agency book with $1,150,000 of paid losses, $180,000 of case reserves, and $90,000 of IBNR
- **When** the loss ratio is computed against $2,400,000 of earned premium
- **Then** the loss ratio is 59.2% using incurred losses including IBNR
- **And** the agency does not qualify for a bonus in the measurement year

## Volume shortfall disqualifies the agency @v1 [published]

- **Given** an agency with $860,000 of eligible written premium and a 38% loss ratio
- **When** the contingent calculation runs
- **Then** no bonus is earned despite the favorable loss ratio
- **And** the agency receives a statement showing the volume shortfall
