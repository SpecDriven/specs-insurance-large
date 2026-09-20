# Consolidate Account Billing

Rolls several policies held by the same household or commercial entity
onto one account bill with a shared due date and a single remittance.

[Jira:INS-482](https://jira.com/INS-482)

## Combine auto and homeowners onto one account bill @v1 [published]

- **Given** a household with an auto policy and a homeowners policy under the same first named insured
- **When** account billing is enabled
- **Then** a single statement lists both policies with a combined amount due
- **And** one policy fee is charged at the account level rather than per policy

## Commercial account bills at the parent entity level @v1 [proposed]

- **Given** Harbor Logistics LLC holding a commercial auto policy and a general liability policy
- **When** account billing is configured at the parent entity
- **Then** both subsidiaries' policies roll into one remittance addressed to the parent
- **And** each subsidiary receives a detail schedule for its own allocation

## Escrow-billed policy is excluded from consolidation @v1 [proposed]

- **Given** a homeowners policy billed to a mortgagee
- **When** the household requests account billing
- **Then** the escrow-billed policy is excluded from the consolidated statement
- **And** the exclusion reason is shown on the account summary

## Partial payment is allocated oldest-first @v1 [proposed]

- **Given** a consolidated statement of $840 covering two policies
- **When** the insured remits $500 without payment instructions
- **Then** the payment is applied to the oldest outstanding item first
- **And** the remaining $340 is shown as past due on the newer item

## Policies with mismatched terms keep separate due dates @v1 [published]

- **Given** an auto policy on a six-month term and a homeowners policy on a twelve-month term
- **When** the account is consolidated
- **Then** the statement shows each policy's own due date
- **And** the insured may pay the full statement or either line individually

## Removing a policy re-spreads the account balance @v1 [published]

- **Given** a consolidated account carrying three policies and a $612 balance
- **When** the boat policy is cancelled mid-term
- **Then** the unearned premium is credited to the account balance
- **And** the remaining two policies keep their original installment amounts
