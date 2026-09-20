# Merge Duplicate Customer Accounts

Combines two records that represent the same person or entity, moving
policies, claims history, and billing under a single surviving customer
number.

## Conflicting mailing addresses require an explicit choice @v1 [proposed]

- **Given** two accounts with different current mailing addresses
- **When** the merge is prepared
- **Then** the representative must select which address survives
- **And** the non-surviving address is retained in the address history

## Merge is blocked when both accounts have open claims @v1 [published]

- **Given** two candidate accounts each carrying an open claim with different adjusters
- **When** the merge is attempted
- **Then** the merge is blocked pending adjuster coordination
- **And** a hand-off task is created for both adjusters (claims/auto-accidents/assign-adjuster.feature.md)

## Merge is not permitted across entity types @v1 [proposed]

- **Given** a personal account for Marcus Lindell and a commercial account for Lindell Hauling LLC
- **When** a merge is attempted
- **Then** the merge is refused with reason "entity type mismatch"
- **And** the representative is offered a related-party link instead

## Merge is reversible within 10 business days @v1 [proposed]

- **Given** a merge completed 6 business days ago that the insured disputes
- **When** a supervisor requests an unmerge
- **Then** both accounts are restored with their original policy and claim assignments
- **And** the unmerge reason and approver are recorded on both records

## Merge two accounts with the surviving record chosen by tenure @v1 [published]

- **Given** two accounts for the same insured, one created in 2019 and one in 2024
- **When** the merge is approved
- **Then** the 2019 account survives and the 2024 account is retired
- **And** all policies, claims, and billing history move to the surviving account

## Retired account number remains resolvable @v1 [published]

- **Given** a completed merge where account 884201 was retired
- **When** a search or inbound document references 884201
- **Then** the request resolves to the surviving account number
- **And** the response notes that the referenced account was merged
