# Record Medical Payments Claim

Medical payments coverage pays reasonable medical expenses for the insured
and occupants regardless of fault, up to the per-person limit on the
declarations page.

## Charges reduced to the usual and customary schedule @v1 [proposed]

- **Given** a chiropractic provider billing $410 per visit in a market where the 80th percentile is $165
- **When** the bills are reviewed through the medical bill review vendor
- **Then** the allowable amount is reduced to the usual and customary schedule
- **And** an explanation of review is sent to the provider and to the insured

## Coordination with a health plan as primary @v1 [proposed]

- **Given** a state where the insured elected health insurance primary on the coverage selection form
- **When** medical bills are submitted directly to Acme
- **Then** the bills are returned for submission to the health plan first
- **And** medical payments coverage responds only to the health plan's unpaid deductible and coinsurance

## Emergency room bill paid regardless of fault @v1 [published]

- **Given** an insured with $5,000 medical payments coverage who was at fault for the collision
- **When** an emergency department bill of $2,340 is submitted with the treatment records
- **Then** the bill is paid without regard to liability
- **And** the remaining medical payments limit is reduced to $2,660

## Medical payments lien asserted against a liability settlement @v1 [proposed]

- **Given** $4,100 paid under medical payments and a pending third-party liability recovery
- **When** the insured settles with the at-fault carrier
- **Then** a subrogation lien for the medical payments amount is asserted against the settlement
- **And** the lien is reduced pro rata for the insured's attorney fees under the make-whole rule

## Passenger occupying the insured vehicle @v1 [published]

- **Given** two passengers riding in the covered auto at the time of the loss
- **When** each submits medical bills under medical payments
- **Then** each is treated as a separate person with their own $5,000 per-person limit
- **And** a separate claimant record is created for each passenger

## Treatment beyond the three-year eligibility window @v1 [published]

- **Given** a date of loss of April 2, 2022 and a policy limiting medical payments to services rendered within three years
- **When** a bill for treatment dated May 2025 is submitted
- **Then** the bill is denied as outside the eligibility period
- **And** the denial letter quotes the policy's time limitation
