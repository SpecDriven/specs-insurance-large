# Assign Defense Counsel

Selecting and engaging panel counsel to defend the insured once suit is
served, and setting the expectations the firm will be measured against
(manage-litigation-budget.feature.md).

## Answer deadline is at risk @v1 [published]

- **Given** an answer due in 4 days with no engagement letter returned by the assigned firm
- **When** the deadline monitor runs
- **Then** the file is escalated to the litigation manager
- **And** an extension of time is requested from plaintiff's counsel as a protective measure

## Conflict check clears before engagement @v1 [published]

- **Given** a proposed firm that previously represented the claimant in an unrelated matter
- **When** the conflict check is run
- **Then** the firm is disqualified from the assignment
- **And** the next firm on the venue's panel rotation is engaged

## Counsel is replaced for performance @v1 [proposed]

- **Given** a firm with two missed status reports and a budget overrun above 40%
- **When** the quarterly panel review runs
- **Then** the firm is placed on watch and new assignments are suspended
- **And** open files are evaluated individually for transfer

## Insured's independent counsel right on a reservation of rights @v1 [published]

- **Given** a defense tendered under a reservation of rights in California
- **When** the conflict created by the reservation is evaluated
- **Then** the insured is advised of the right to independent counsel at the carrier's expense
- **And** rate limits for independent counsel are stated in the advisement letter

## Non-panel firm requires an exception @v1 [proposed]

- **Given** a request to retain a non-panel firm in a rural venue with no panel coverage
- **When** the exception is submitted
- **Then** the firm's rates and malpractice coverage are verified before engagement
- **And** the exception is approved by the litigation manager in writing

## Served suit triggers a panel assignment @v1 [published]

- **Given** a summons and complaint served on the insured in Maricopa County, Arizona
- **When** the suit paper is logged
- **Then** panel counsel admitted in Arizona is assigned within 2 business days
- **And** the answer due date is calendared from the service date, not the logging date
- **And** the insured receives a letter naming the assigned firm and its contact

## Severity drives the counsel tier @v1 [proposed]

- **Given** a suit with an evaluated exposure of $1,400,000 and a catastrophic injury allegation
- **When** counsel is selected
- **Then** a senior trial firm from the complex tier is assigned rather than a general defense firm
- **And** a claims director is added to the file's approval chain
