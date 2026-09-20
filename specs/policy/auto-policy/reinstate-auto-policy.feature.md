# Reinstate Auto Policy

Restoring coverage after a cancellation for non-payment. Reinstatement may
be with or without a lapse, which determines whether the insured is exposed
for the intervening days.

[Jira:PC-902](https://jira.com/PC-902)

## Lienholder is notified of the reinstated physical damage coverage @v1 [proposed]

- **Given** a reinstated policy with a loss payee recorded for a financed vehicle
- **When** the reinstatement is issued
- **Then** an evidence of insurance is transmitted to the lienholder within 1 business day
- **And** the transmission is recorded in the policy history

## Loss occurring during the gap is denied @v1 [proposed]

- **Given** a policy reinstated with a lapse from April 8 through April 23
- **And** a reported collision with a date of loss of April 19
- **When** the claim is set up
- **Then** the claim is denied for no coverage in force on the date of loss
- **And** the denial references the reinstatement endorsement date

## Payment after 10 days reinstates with a gap @v1 [published]

- **Given** a policy cancelled for non-payment effective April 8
- **When** the past-due balance is received on April 24
- **Then** the policy is reinstated effective April 24 at 12:01 a.m.
- **And** the period from April 8 through April 23 is recorded as an uncovered lapse
- **And** a signed no-loss statement is required before the reinstatement is issued

## Payment within 10 days reinstates without a lapse @v1 [published]

- **Given** a policy cancelled for non-payment effective April 8
- **When** the full past-due balance of $214.60 is received on April 15
- **Then** the policy is reinstated with continuous coverage from April 8
- **And** a no-lapse reinstatement notice is issued to the named insured and the lienholder

## Reinstatement is refused after a third lapse in one term @v1 [published]

- **Given** the policy has already lapsed twice during the current six-month term
- **When** a third reinstatement is requested
- **Then** the request is refused
- **And** the insured is offered a new-business quote rather than a reinstatement

## Reinstatement restores the original expiration date @v1 [published]

- **Given** a policy with an original term of January 1 through July 1
- **When** the policy is reinstated on April 24
- **Then** the expiration date remains July 1
- **And** the earned premium is recalculated to exclude the lapse period
