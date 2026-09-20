# Arbitrate Intercompany Dispute

Resolving a contested recovery between signatory carriers through
intercompany arbitration rather than suit.

## Adverse decision is final and not appealable @v1 [proposed]

- **Given** a panel decision awarding $0 to the carrier
- **When** the adjuster requests an appeal
- **Then** the request is refused because the forum's decision is binding on signatory members
- **And** the file is closed with a zero recovery and a documented outcome code

## Contested auto subrogation is filed for arbitration @v1 [published]

- **Given** a disputed demand of $12,400 against a signatory carrier
- **When** the file is submitted to the intercompany arbitration forum
- **Then** a contentions statement and the supporting evidence exhibits are filed
- **And** the filing fee is booked as allocated loss adjustment expense

## Evidence must be filed before the answer deadline @v1 [published]

- **Given** an arbitration filed on February 4 with a 60-day answer period
- **When** supplemental evidence is offered on day 63
- **Then** the late evidence is excluded from the panel's consideration
- **And** the omission is captured in the file's post-decision review

## Filing amount over the compulsory ceiling @v1 [published]

- **Given** a disputed recovery of $340,000
- **When** the arbitration route is evaluated
- **Then** the dispute is excluded from compulsory arbitration and routed to litigation review
- **And** the recovery manager records the reason the forum was bypassed

## Non-signatory respondent blocks the forum @v1 [proposed]

- **Given** an adverse carrier that is not a member of the arbitration forum
- **When** a filing is attempted
- **Then** the filing is rejected and the file returns to direct negotiation or suit

## Panel awards a comparative split @v1 [proposed]

- **Given** an arbitration on a disputed lane-change loss
- **When** the panel awards 65% of the claimed $12,400
- **Then** $8,060 is booked as a recovery
- **And** the insured's deductible share is calculated from the same percentage (recover-deductible-for-insured.feature.md)
