# Detect Staged Accident Pattern

Network analysis across claims, vehicles, providers, and attorneys to
surface organized staged-collision rings.

## Cluster is dissolved after review @v1 [proposed]

- **Given** a cluster of 6 claims created by an address match
- **When** investigation confirms the address is a legitimate apartment complex with unrelated residents
- **Then** the cluster is dissolved and the payment holds are lifted
- **And** the false-positive outcome is fed back to the network model

## Provider billing signature matches a known ring @v1 [proposed]

- **Given** a treating clinic billing an identical 24-visit protocol across 31 unrelated claimants
- **When** the provider pattern review runs
- **Then** the clinic is added to the watch list and its open bills are held
- **And** the National Insurance Crime Bureau referral is prepared

## Repeated participant network surfaces a ring @v1 [published]

- **Given** 14 claims over 9 months sharing 3 claimant addresses and the same chiropractic clinic
- **When** the network analysis runs
- **Then** a staged accident cluster is created linking the claims, parties, and providers
- **And** every open claim in the cluster receives a payment hold

## Single coincidence is not a cluster @v1 [proposed]

- **Given** two claims sharing only the same tow operator
- **When** the network analysis runs
- **Then** no cluster is created because the link strength is below the threshold
- **And** the weak link is retained for 24 months in case further claims attach

## Swoop-and-squat profile on a single loss @v1 [published]

- **Given** a three-vehicle loss where the lead vehicle braked without cause and left the scene
- **And** four occupants in the middle vehicle all reporting soft-tissue injury
- **When** the loss facts are scored against the staged-collision profile
- **Then** the claim is flagged as a probable staged accident
- **And** a recorded statement is required from each occupant separately

## Vehicle with pre-existing damage @v1 [published]

- **Given** photographs showing rust and paint transfer inconsistent with a loss reported 2 days ago
- **When** the photo analysis flags the inconsistency
- **Then** an appraiser is dispatched for a physical inspection before any payment
- **And** the prior damage finding is attached to the claim file
