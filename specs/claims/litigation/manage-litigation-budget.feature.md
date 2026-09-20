# Manage Litigation Budget

Budgets, billing guidelines, and invoice review for assigned defense
counsel.

[Jira:PC-77](https://jira.com/PC-77)

## Billing guideline violations are deducted @v1 [published]

- **Given** an invoice containing block-billed entries and two timekeepers at the same deposition
- **When** the invoice passes through automated review
- **Then** the non-compliant entries are deducted and coded to the violation type

| violation                     | treatment                      |
| ----------------------------- | ------------------------------ |
| Block billing                 | 20% reduction of the entry     |
| Duplicate attendance          | Junior timekeeper disallowed   |
| Clerical or administrative    | Disallowed in full            |
| Travel billed at full rate    | Reduced to 50% of the rate     |

## Budget closes when the case resolves @v1 [proposed]

- **Given** a case dismissed with prejudice on June 30
- **When** the final invoice is received 45 days later
- **Then** the budget is closed and reconciled against total paid LAE
- **And** any remaining LAE reserve is released

## Expert expense needs pre-approval @v1 [proposed]

- **Given** a retained biomechanical expert invoiced at $14,200 with no prior approval request
- **When** the invoice is reviewed
- **Then** the expense is held and the firm is asked to submit a retrospective justification
- **And** the file note records whether the expense is ultimately allowed

## Initial budget is due after the answer @v1 [published]

- **Given** a newly assigned defense file with an answer filed on April 9
- **When** 30 days pass from the answer date
- **Then** a phased litigation budget covering pleadings, discovery, motions, and trial is required
- **And** invoices are held from payment until the budget is submitted

## Overrun above tolerance requires a revised budget @v1 [published]

- **Given** an approved discovery phase budget of $45,000
- **When** cumulative discovery fees reach $54,500
- **Then** further discovery invoices are held pending an approved revised budget
- **And** the litigation manager is notified of the 21% overrun

## Rate increase outside the engagement terms @v1 [proposed]

- **Given** an engagement letter fixing a partner rate of $315 per hour through year end
- **When** an invoice bills partner time at $340 per hour in October
- **Then** the excess is deducted and the approved rate is restated to the firm
