# Close Subrogation File

Final disposition of a recovery file, whether it recovered in full, settled
short, or closed without recovery.

## Closing without recovery records a reason code @v1 [published]

- **Given** a file with an uncollectible tortfeasor and no adverse coverage
- **When** the file is closed
- **Then** a no-recovery reason code is required before closure is accepted
- **And** the file is excluded from the recovery rate denominator for that reason code

## Compromise closure requires manager approval @v1 [published]

- **Given** a demand of $12,400 resolved for $7,500
- **When** the adjuster attempts to close the file
- **Then** closure is held until the recovery manager approves the $4,900 write-off

## Full recovery closes the file @v1 [published]

- **Given** a demand of $12,400 paid in full with the insured's deductible already refunded
- **When** the file is closed
- **Then** the outcome is coded as a full recovery
- **And** the originating claim's net incurred is finalized

## Open evidence hold blocks closure @v1 [proposed]

- **Given** a product liability file with a retained failed component under evidence hold
- **When** closure is attempted
- **Then** closure is refused until the evidence is released or destroyed with written authorization

## Reopening after closure @v1 [proposed]

- **Given** a file closed 4 months ago for an uncollectible tortfeasor
- **When** an asset search identifies newly discovered property in the tortfeasor's name
- **Then** the file is reopened with the original limitations date preserved
- **And** the reopening rationale is recorded for audit
