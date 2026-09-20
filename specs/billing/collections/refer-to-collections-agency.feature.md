# Refer Balance to Collections Agency

Hands an uncollectible earned premium balance to an outside agency after
internal collection efforts are exhausted, and tracks recoveries and
recalls.

## Balance below the referral floor is not placed @v1 [published]

- **Given** an uncollected balance of $62 and a $75 referral floor
- **When** the referral job evaluates the account
- **Then** the balance is excluded from placement
- **And** it is queued for the small balance write-off review (write-off-small-balance.feature.md)

## Recall on a bankruptcy notice @v1 [published]

- **Given** a placed balance for an insured who files Chapter 7
- **When** the bankruptcy notice is received
- **Then** the balance is recalled from the agency the same business day
- **And** all collection contact is suspended and the claim is routed to the legal queue

## Recovery is posted net of the agency fee @v1 [proposed]

- **Given** a $438 balance placed with the agency
- **When** the agency remits a $438 recovery
- **Then** $315.36 is posted as net recovery and $122.64 is recorded as collection expense
- **And** the account balance is cleared to zero

## Refer an aged balance after cancellation @v1 [published]

- **Given** a cancelled policy with $438 of earned premium unpaid for 65 days
- **And** at least two dunning notices were sent and no payment arrangement exists
- **When** the referral job runs
- **Then** the balance is placed with the assigned agency at a 28% contingency rate
- **And** the account is flagged as in-collections and internal dunning stops

## Reinstatement recalls the placed balance @v1 [proposed]

- **Given** a placed balance on a policy the insured now wants reinstated
- **When** the insured pays the full outstanding amount directly to the carrier
- **Then** the placement is recalled and the agency is notified within 1 business day
- **And** the agency's contingency fee is still owed on the recovered amount

## Statute of limitations closes the placement @v1 [proposed]

- **Given** a balance placed 4 years ago with no payment activity
- **And** the governing state statute of limitations is 4 years
- **When** the placement review runs
- **Then** the balance is closed as time-barred and returned from the agency
- **And** no further collection activity is permitted on the account
