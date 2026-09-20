# Run Workers Compensation Premium Audit

At expiration the estimated payroll on the policy is replaced with audited
payroll and premium is adjusted. Audit results also feed the next
experience modifier (apply-experience-modifier.feature.md).

[Jira:CLM-508](https://jira.com/CLM-508)

## Audit completed after the policy is cancelled @v1 [published]

- **Given** a policy cancelled mid-term on April 30 for nonpayment
- **When** the final audit is completed in June
- **Then** premium is developed only through April 30
- **And** any return premium is applied against the outstanding balance first

## Audited payroll increases produce additional premium @v1 [published]

- **Given** estimated payroll of $900,000 and audited payroll of $1,315,000
- **When** the audit is posted
- **Then** additional premium is billed on the $415,000 of excess payroll
- **And** the balance is added to the insured's billing account (billing/collect-premium.feature.md)

## Cash payments to uninsured subcontractors are added to payroll @v1 [proposed]

- **Given** an audit finding $86,000 in cash payments to laborers with no certificates of insurance
- **When** the audit is computed
- **Then** the payments are added to the rating basis at the applicable construction class rate

## Mail audit is used for small clerical risks @v1 [published]

- **Given** an expiring policy with $180,000 of payroll entirely in class code 8810
- **When** the audit queue is built
- **Then** a mail audit packet is sent with a 21-day return deadline

## Physical audit is ordered for a large construction risk @v1 [published]

- **Given** an expiring policy with $4,100,000 of estimated construction payroll
- **When** the audit queue is built
- **Then** a physical audit is assigned to a field auditor
- **And** the insured is contacted within 15 days of expiration to schedule

## Refusal to provide records after two notices @v1 [proposed]

- **Given** an insured who declines to produce payroll records after a first and second notice
- **When** the second notice period expires
- **Then** the policy is endorsed with an audit noncompliance charge of two times the estimated premium
- **And** the insured is advised the charge is removed if records are produced within 90 days
