# Manage MCS-90 Filing

[Jira:INS-412](https://jira.com/INS-412)

Federal motor carriers must file proof of financial responsibility. Acme
issues the MCS-90 endorsement and the associated BMC-91X filing with the
FMCSA on behalf of qualifying insureds.

## Cancellation triggers a 35-day filing withdrawal notice @v1 [published]

- **Given** an active BMC-91X filing on a policy
- **When** the policy is cancelled effective November 30
- **Then** a withdrawal notice is filed with the FMCSA
- **And** the filing remains in force for 35 days after the notice is received

## Issue MCS-90 for an interstate for-hire carrier @v1 [published]

- **Given** an insured holds an active USDOT number and operates for hire across state lines
- **And** the policy carries a $1,000,000 combined single limit
- **When** the agent requests an MCS-90 endorsement
- **Then** the MCS-90 is attached to the policy
- **And** a BMC-91X filing is transmitted to the FMCSA within one business day

## Limit below the federal minimum blocks the filing @v1 [published]

- **Given** a carrier hauling non-hazardous freight in vehicles over 10,000 pounds
- **And** the policy liability limit is $750,000
- **When** the agent requests an MCS-90
- **Then** the filing is refused
- **And** the agent is told the federal minimum of $750,000 applies but Acme requires $1,000,000 to file

## Recovery under the MCS-90 is reimbursed by the insured @v1 [proposed]

- **Given** a judgment is paid under the MCS-90 for a trip excluded by the policy
- **When** the claim is closed
- **Then** a reimbursement demand for the full indemnity and allocated LAE is issued to the named insured

## Reinstatement after nonpay restores the filing @v1 [proposed]

- **Given** a policy cancelled for nonpayment with a withdrawn federal filing
- **When** the insured pays in full and the policy is reinstated without a lapse
- **Then** a new BMC-91X is transmitted showing the original effective date
- **And** the insured is emailed confirmation of the restored filing
