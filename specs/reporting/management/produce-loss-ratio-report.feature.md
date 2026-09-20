# Produce a Loss Ratio Report

Management reporting of earned premium against incurred loss and LAE, sliced
by line, state, product version, and distribution channel. Figures come from
the closed accounting month, never from live transactional tables.

[Jira:INS-556](https://jira.com/INS-556)

## Accident year view excludes prior year development @v1 [published]

- **Given** a request for the accident year 2026 loss ratio
- **When** the report is produced
- **Then** only losses on accidents occurring in 2026 are included
- **And** development on 2025 accidents recognised in 2026 is excluded and shown as a separate reconciling line

## Calendar year loss ratio by line @v1 [published]

- **Given** a closed accounting month of August 2026
- **When** the loss ratio job runs for personal lines
- **Then** the calendar year to date loss ratio is reported for auto, homeowners, and umbrella
- **And** each figure shows earned premium, incurred loss, and incurred LAE separately

## Catastrophe losses shown gross and net @v1 [published]

- **Given** an accounting month containing the June 14 Denver hail event
- **When** the loss ratio is produced for Colorado homeowners
- **Then** the ratio is shown including and excluding catastrophe losses
- **And** the catastrophe serial number is named in the footnote

## Ratio breaching plan triggers an alert @v1 [published]

- **Given** a plan loss ratio of 64% for Arizona personal auto
- **When** the actual reaches 71.8% for two consecutive months
- **Then** an exception alert is raised to the line of business owner
- **And** the alert links the segment to the open rate revision if one exists (product/rate-filings/model-rate-change-impact.feature.md)

## Reopened month is republished @v1 [proposed]

- **Given** a published August report
- **When** the accounting month is reopened for a reserve correction and closed again
- **Then** the report is republished with a new run identifier
- **And** the superseded version remains retrievable with its original figures

## Reserve tier drives the review cadence @v1 [proposed]

- **Given** a reported segment with an incurred but not reported provision
- **When** the reserve review calendar is built
- **Then** the segment is placed in a review tier by its incurred amount

| incurred band   | review cadence | reviewer                  |
| --------------- | -------------- | ------------------------- |
| under $500K     | annual         | line analyst              |
| $500K to $5M    | quarterly      | reserving actuary         |
| $5M to $25M     | monthly        | chief actuary             |
| over $25M       | monthly        | chief actuary and CFO     |

## Thin segment is suppressed @v1 [published]

- **Given** a channel and state combination with $41,000 of earned premium
- **When** the segment is rendered and the minimum credible premium is $250,000
- **Then** the loss ratio is suppressed and shown as not credible
- **And** the segment is still included in the parent rollup
