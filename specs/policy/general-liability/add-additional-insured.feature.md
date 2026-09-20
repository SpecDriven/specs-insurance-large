# Add Additional Insured

[Jira:PC-733](https://jira.com/PC-733)

Additional insured endorsements extend the named insured's liability
coverage to another party for liability arising out of the named insured's
work or premises. They appear on certificates
(issue-certificate-of-insurance.feature.md).

## Add an owner as additional insured for ongoing operations @v1 [published]

- **Given** a general contractor named insured with a written contract requiring additional insured status
- **When** the agent adds form CG 20 10 naming the project owner
- **Then** the owner is covered for liability arising out of the named insured's ongoing operations
- **And** the endorsement is attached to the declarations with the project address

## Additional insured cannot exceed the named insured's limits @v1 [proposed]

- **Given** a policy with a $1,000,000 occurrence limit
- **When** a contract requires $2,000,000 for the additional insured
- **Then** the endorsement is issued at $1,000,000
- **And** the agent is advised to quote an excess liability policy for the difference

## Blanket additional insured applies only where a contract requires it @v1 [published]

- **Given** a blanket additional insured endorsement on the policy
- **When** a party requests additional insured status without a written agreement
- **Then** no additional insured status attaches
- **And** the agent is told a signed contract executed before the loss is required

## Completed operations require a separate endorsement @v1 [published]

- **Given** a contract requiring additional insured status for completed operations
- **When** only CG 20 10 is attached
- **Then** the agent is warned that completed operations are not covered
- **And** form CG 20 37 is offered (cover-products-completed-operations.feature.md)

## Primary and non-contributory wording requires underwriter approval @v1 [proposed]

- **Given** a contract demanding primary and non-contributory coverage
- **When** the agent requests the wording
- **Then** the request is routed to an underwriter
- **And** an additional premium of 5% of the policy premium is charged if approved

## Remove an additional insured at project completion @v1 [published]

- **Given** a scheduled additional insured for a project completed on August 30
- **When** the agent removes the endorsement effective August 30
- **Then** the party is deleted from future declarations
- **And** coverage for occurrences before August 30 is unaffected
