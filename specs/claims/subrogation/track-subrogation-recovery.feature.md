# Track Subrogation Recovery

Booking recovered funds against the originating claim and keeping recovery
performance measurable.

## Dishonored recovery payment is reversed @v1 [proposed]

- **Given** a $6,200 recovery booked 6 days ago
- **When** the bank returns the item for insufficient funds
- **Then** the recovery entry is reversed and net incurred is restored
- **And** the deductible refund already issued to the insured is not clawed back

## Installment payments are tracked to completion @v1 [published]

- **Given** a 12-month installment arrangement of $300 per month from an uninsured tortfeasor
- **When** a monthly payment posts
- **Then** the remaining balance and the next due date are updated on the recovery record
- **And** a missed installment raises a collections diary after a 10-day grace period

## Recovery is booked against the originating exposure @v1 [published]

- **Given** a $6,200 check received from the adverse carrier
- **When** the funds are applied
- **Then** the recovery is booked against the collision exposure that generated the payment
- **And** net incurred on the claim is reduced by the carrier's retained share

## Recovery on a reinsured claim is ceded @v1 [published]

- **Given** a claim that pierced the $10,000,000 per-occurrence retention
- **When** a $480,000 recovery is booked
- **Then** the ceded share is calculated by layer and reported on the next bordereau

## Recovery rate is reported by referral source @v1 [proposed]

- **Given** a closed reporting month with 410 resolved subrogation files
- **When** the recovery report is produced
- **Then** gross recovery, net recovery, and recovery rate are reported by referral source

| referral source     | files | gross recovery | recovery rate |
| ------------------- | ----- | -------------- | ------------- |
| Automated screen    | 265   | $1,840,000     | 62%           |
| Adjuster referral   | 118   | $960,000       | 54%           |
| Cause-and-origin    | 27    | $712,000       | 71%           |

## Unapplied funds age past the suspense window @v1 [proposed]

- **Given** a recovery check that cannot be matched to a claim number
- **When** the funds sit in suspense for more than 30 days
- **Then** the item is escalated to the recovery manager for manual research
- **And** the remitter is contacted for a claim reference
