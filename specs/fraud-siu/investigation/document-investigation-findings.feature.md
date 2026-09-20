# Document Investigation Findings

Closing out an SIU file with a defensible record of what was investigated,
what was found, and what the claim outcome should be.

## Findings are shared with law enforcement on request @v1 [proposed]

- **Given** a district attorney's written request for the file on a confirmed arson claim
- **When** the request is reviewed by legal
- **Then** the findings report and supporting exhibits are produced under the state's immunity provision
- **And** the production is logged with the date, recipient, and documents released

## Findings report supports a denial recommendation @v1 [published]

- **Given** a completed investigation with a contradicted EUO, a false proof of loss, and a recovered vehicle
- **When** the investigator closes the file
- **Then** a findings report stating each indicator, the evidence resolving it, and the conclusion is produced
- **And** the denial recommendation is routed to coverage counsel before any letter is issued

## Incomplete file cannot be closed @v1 [proposed]

- **Given** an investigation with an open indicator and no recorded disposition
- **When** the investigator attempts closure
- **Then** closure is refused until every listed indicator carries a resolution
- **And** the unresolved indicator is shown in the closure error

## Investigation clears the claim @v1 [published]

- **Given** an investigation that resolves every indicator in the insured's favor
- **When** the file is closed
- **Then** the payment hold is released and the claim returns to normal handling
- **And** the insured is not told that an SIU file existed

## Referral outcome is reported back to the model @v1 [proposed]

- **Given** a closed SIU file with a confirmed-fraud outcome code
- **When** the monthly feedback extract runs
- **Then** the outcome is returned to the scoring model as labeled training data (detection/score-claim-fraud-risk.feature.md)
- **And** cleared outcomes are returned with equal weight to confirmed ones

## Retention schedule for investigative material @v1 [published]

- **Given** a closed SIU file containing surveillance video and a background report
- **When** the retention schedule is applied
- **Then** the material is retained for 7 years from closure
- **And** the background report is access-restricted to SIU and legal roles
