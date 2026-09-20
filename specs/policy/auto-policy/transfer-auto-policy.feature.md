# Transfer Auto Policy Between States

A permanent move to another state ends the current contract and rewrites
the policy under the new state's filing, forms, and statutory minimums.

## Claim-free credit and tenure carry to the rewritten policy @v1 [published]

- **Given** a transferring policy with 7 years of continuous tenure and no chargeable losses
- **When** the new state policy is rated
- **Then** the tenure credit and claim-free credit are carried forward
- **And** the original inception date is preserved for loss-free rating

## No-fault state adds personal injury protection @v1 [published]

- **Given** a transfer into Michigan
- **When** the rewritten policy is assembled
- **Then** personal injury protection is added at the statutory default level
- **And** medical payments coverage is removed as duplicative

## Permanent move rewrites the policy under the new state filing @v1 [published]

- **Given** an in-force Arizona policy for the Okafor household
- **When** the insured reports a permanent move to Colorado effective September 1
- **Then** the Arizona policy is cancelled pro-rata effective September 1
- **And** a Colorado policy is issued with the same effective date and no lapse
- **And** the unearned premium is applied to the new policy balance

## Statutory minimum limits are raised on transfer @v1 [published]

- **Given** a policy with 15/30/10 limits written in Arizona
- **And** the destination state requires minimum limits of 25/50/25
- **When** the transfer is processed
- **Then** the limits are raised to 25/50/25 on the rewritten policy
- **And** the resulting premium change is disclosed before the transfer is confirmed

## Temporary military relocation keeps the original state policy @v1 [proposed]

- **Given** an insured on active-duty orders relocating to Virginia for 14 months
- **When** the insured requests to keep the home-state policy
- **Then** the policy remains written in the original state
- **And** the garaging address is endorsed to the duty station for rating (endorse-policy.feature.md)
- **And** the arrangement is reviewed at each renewal

## Transfer to a state where Acme is not admitted is declined @v1 [proposed]

- **Given** a reported move to Hawaii
- **And** Acme holds no certificate of authority in Hawaii
- **When** the transfer is requested
- **Then** the transfer is declined with reason "carrier not admitted in destination state"
- **And** the insured is given 30 days' notice of non-renewal
