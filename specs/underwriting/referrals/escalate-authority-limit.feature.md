# Escalate Beyond Authority Limit

When a requested limit, credit, or exception exceeds the assigned
underwriter's granted authority, the file escalates to the next level
before any decision is binding.

## Approval granted after the quote is already bound @v1 [proposed]

- **Given** an agent who bound the risk before the escalation was decided
- **When** the unauthorized bind is detected
- **Then** the policy is flagged for rescission review within 2 business days
- **And** the agent's binding authority is suspended pending review

## Approver is the same person who referred the file @v1 [proposed]

- **Given** an escalation routed to a manager who authored the original referral
- **When** the assignment is attempted
- **Then** the escalation is rerouted to an alternate approver
- **And** the segregation-of-duties reroute is logged

## Discretionary credit above the permitted band @v1 [published]

- **Given** a schedule rating credit band of plus or minus 15% at the underwriter level
- **When** a 25% credit is requested to meet a competitor's price
- **Then** the credit request escalates for approval
- **And** the competitive justification must be documented before approval

## Escalation during a catastrophe moratorium @v1 [proposed]

- **Given** a binding moratorium in effect for the county (../appetite/apply-moratorium.feature.md)
- **When** an exception to bind is escalated
- **Then** only the chief underwriter may grant the exception
- **And** the exception expires when the moratorium is lifted

## Limit above the underwriter's authority escalates @v1 [published]

- **Given** an underwriter with $5,000,000 of personal lines authority
- **When** a $10,000,000 umbrella limit is requested on a referral
- **Then** the file escalates to the regional underwriting manager
- **And** the underwriter may recommend but not approve the request

## Recommendation carried forward to the approver @v1 [published]

- **Given** an escalated file with the underwriter's written recommendation to approve
- **When** the regional manager opens the file
- **Then** the recommendation, supporting documents, and rule failures are presented together
- **And** the approver may accept, modify, or reject the recommendation
