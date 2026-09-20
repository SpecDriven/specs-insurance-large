# Renew Homeowners Policy

Annual renewal of an HO-3, including inflation guard, loss-history review,
and the statutory notice windows for non-renewal.

[Jira:INS-1207](https://jira.com/INS-1207)

## Inflation guard raises Coverage A automatically @v1 [published]

- **Given** a renewing policy with Coverage A of $340,000 and a 4% inflation guard
- **When** the renewal is rated
- **Then** Coverage A is increased to $353,600
- **And** the increase is disclosed on the renewal declarations page

## Mid-term roof replacement restores replacement cost settlement @v1 [published]

- **Given** a policy whose roof was placed on actual cash value settlement at the prior renewal
- **When** the insured files a completed roof replacement permit dated within the term
- **Then** replacement cost settlement is restored at renewal
- **And** the roof-age surcharge is removed

## Renewal offer is issued 45 days before expiration @v1 [published]

- **Given** an HO-3 expiring on 2026-11-30
- **When** the renewal batch runs on 2026-10-16
- **Then** a renewal offer and declarations page are mailed to the named insured
- **And** the renewal premium is billed on the existing installment plan

## Two non-weather losses in three years trigger non-renewal @v1 [published]

- **Given** a loss run showing two paid non-weather claims within the past 36 months
- **When** the renewal is underwritten
- **Then** a notice of non-renewal is mailed at least 60 days before expiration
- **And** the specific reason and the DOI complaint address are stated in the notice

## Unpaid balance from the expiring term blocks renewal @v1 [proposed]

- **Given** an outstanding balance of $148 on the expiring term
- **When** the renewal effective date arrives without payment
- **Then** the renewal is not issued and the policy expires
- **And** the outstanding balance is referred to collections

## Wildfire score above threshold moves the risk to a surplus market @v1 [proposed]

- **Given** a renewing dwelling whose wildfire hazard score rose from 42 to 81
- **And** the admitted program caps eligibility at a score of 70
- **When** the renewal is underwritten
- **Then** the admitted renewal is declined
- **And** the account is referred to the surplus lines broker of record
