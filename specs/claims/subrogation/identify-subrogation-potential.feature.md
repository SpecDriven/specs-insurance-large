# Identify Subrogation Potential

Screening paid claims for recovery rights against an at-fault third party.
A referral here starts the demand process
(pursue-subrogation-demand.feature.md).

## Comparative fault below the screening threshold @v1 [published]

- **Given** a claim where the insured is assessed at 70% fault
- **When** the subrogation screen runs
- **Then** no referral is created because the recoverable share falls below the 40% threshold
- **And** the screening decision and fault assessment are documented on the claim

## Net recovery is not worth the pursuit cost @v1 [proposed]

- **Given** a paid claim of $1,150 with an adverse driver who is uninsured and has no traceable assets
- **When** the referral is evaluated for economic viability
- **Then** the referral is closed as not economically viable
- **And** the closure reason is coded for recovery-rate reporting

## Product defect opens a manufacturer recovery @v1 [published]

- **Given** a water damage claim traced to a failed supply line connector
- **When** the cause-and-origin report names the manufacturer and lot number
- **Then** a product liability subrogation referral is created
- **And** the failed component is placed under an evidence hold before repairs proceed

## Rear-end loss screens in automatically @v1 [published]

- **Given** a collision claim paid at $11,400 where the insured was struck from behind
- **When** the subrogation screen runs at first payment
- **Then** the claim is referred to the subrogation unit with a presumed-liability indicator
- **And** the adverse carrier and policy number from the loss report are carried onto the referral

## Statute of limitations is calendared at referral @v1 [proposed]

- **Given** a property damage referral with a loss date of May 14, 2026 in a state with a three-year statute
- **When** the referral is accepted
- **Then** a limitations date of May 14, 2029 is calendared on the file
- **And** escalation diaries are set at 180 and 90 days before that date

## Waiver of subrogation in the underlying contract bars recovery @v1 [published]

- **Given** a commercial property loss caused by a contractor working under an AIA agreement
- **When** the contract's waiver of subrogation clause is verified
- **Then** the referral is closed with no recovery rights
- **And** underwriting is notified so the waiver is reflected at renewal

## Workers compensation carrier holds a competing right @v1 [proposed]

- **Given** an injured claimant whose medical costs were partly paid by a workers compensation carrier
- **When** subrogation potential is evaluated
- **Then** the competing lien is noted and a coordination contact is opened with the comp carrier
- **And** any recovery is flagged for allocation between the two carriers
