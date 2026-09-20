# Estimate Vehicle Damage

Physical damage appraisal for collision and comprehensive losses. The
estimate drives the reserve and the settlement offer
(settle-collision-claim.feature.md); when repair cost approaches vehicle
value the file moves to total loss (claims/total-loss/declare-total-loss.feature.md).

## Aftermarket parts on a vehicle over seven model years @v1 [proposed]

- **Given** a 2016 sedan with quarter panel and door damage
- **When** the appraiser writes the estimate
- **Then** certified aftermarket parts are specified for non-structural panels
- **And** OEM parts are specified for any part bearing a safety restraint attachment
- **And** the parts type for each line is disclosed on the estimate copy sent to the insured

## Betterment applied to worn tires @v1 [proposed]

- **Given** a collision that destroyed two tires with 70% tread wear
- **When** the appraiser prices replacement tires
- **Then** a betterment deduction of 70% of the tire cost is taken from the insured's share
- **And** the betterment line is itemized with the measured tread depth

## Estimate disputed by the insured's own shop @v1 [proposed]

- **Given** an Acme estimate of $6,100 and an independent shop estimate of $8,750
- **When** the insured disputes the difference
- **Then** a reinspection is scheduled with the shop within 3 business days
- **And** the two estimates are reconciled line by line
- **And** any unresolved difference is escalated to the appraisal clause under the policy

## Field appraisal required above the photo threshold @v1 [published]

- **Given** a photo estimate totalling $9,400 on a 2021 crossover
- **When** the estimate is submitted for review
- **Then** the file is routed to a staff field appraiser because it exceeds the $7,500 photo limit
- **And** the photo estimate is retained as a preliminary document only

## Photo estimate on a light-damage claim @v1 [published]

- **Given** an open collision claim with visible damage limited to the rear bumper cover
- **When** the insured uploads eight photos through the mobile estimating app
- **Then** a photo estimate is generated within 4 business hours
- **And** the estimate is written on the Mitchell labor rate for the garaging ZIP
- **And** the insured is offered the direct-repair program network or their own shop

## Supplement for hidden damage found at teardown @v1 [published]

- **Given** an approved estimate of $4,200 and the vehicle at a direct-repair shop
- **When** the shop requests a $1,850 supplement for a bent radiator support found at teardown
- **Then** the supplement is reviewed against the teardown photos
- **And** the approved supplement is added to the estimate as revision 2
- **And** the claim reserve is increased to match the revised repair cost

## Vehicle unavailable for inspection after repeated attempts @v1 [published]

- **Given** an appraiser has attempted contact three times over 10 calendar days
- **When** the vehicle is still not made available for inspection
- **Then** the claim is set to "Pending — insured cooperation"
- **And** a written request citing the duties-after-loss condition is mailed to the named insured
