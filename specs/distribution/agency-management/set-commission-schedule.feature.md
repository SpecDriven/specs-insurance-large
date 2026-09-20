# Set Agency Commission Schedule

Commission schedules attach to an agency code by line of business and
transaction type. Schedules drive the statements an agency sees in the
portal (../agent-portal/view-book-of-business.feature.md).

[Jira:INS-4412](https://jira.com/INS-4412)

## Chargeback follows a flat-cancelled policy @v1 [published]

- **Given** a bound policy that earned the agency $184 of new business commission
- **When** the policy is flat cancelled within the 10-day free-look period
- **Then** the full $184 is charged back on the next commission statement
- **And** a short-rate cancellation would instead charge back only the unearned portion

## Contingent commission requires a loss ratio threshold @v1 [published]

- **Given** an agency with $1,400,000 of earned premium in the 2025 contingent year
- **And** a book loss ratio of 47% including loss adjustment expense
- **When** the contingent calculation runs after the 90-day development window
- **Then** a contingent commission of 3% of earned premium is accrued
- **And** no contingent is paid when the loss ratio is 60% or higher

## Mid-term rate change does not disturb prior transactions @v1 [proposed]

- **Given** an agency paid 12% on personal auto new business since January
- **When** a 13% schedule takes effect 1 July 2026
- **Then** policies effective before 1 July continue to earn 12%
- **And** only transactions dated on or after 1 July earn 13%

## Negative statement balance carries forward @v1 [proposed]

- **Given** an agency whose chargebacks exceed earnings by $2,310 in a statement period
- **When** the statement closes
- **Then** no payment is issued
- **And** the negative balance carries forward and offsets the next period
- **And** the agency is notified when a carried balance exceeds two consecutive periods

## New business and renewal rates differ by line @v1 [published]

- **Given** a Silver-tier agency appointed for personal auto and homeowners
- **When** the distribution manager publishes the standard schedule effective 1 January 2026
- **Then** each line carries distinct new business and renewal rates
- **And** the schedule applies to policies with an effective date on or after 1 January 2026

| line of business | new business | renewal | endorsement |
| ---------------- | ------------ | ------- | ----------- |
| Personal auto    | 12%          | 10%     | 10%         |
| Homeowners       | 15%          | 13%     | 13%         |
| Renters          | 18%          | 15%     | 15%         |
| Umbrella         | 11%          | 9%      | 9%          |

## Sub-producer split is honoured on shared business @v1 [published]

- **Given** a placement shared between the writing agency and a referring agency at a 70/30 split
- **When** commission is calculated on the bound premium
- **Then** each agency code receives its share on its own statement
- **And** the split is recorded on the policy for audit
