# Recover a Failed Job

Restarting a batch job that failed partway. Jobs checkpoint by commit unit so
a restart resumes rather than repeating work already committed
(run-nightly-batch-cycle.feature.md).

## Force release requires a supervisor @v1 [published]

- **Given** a job lock held for 90 minutes past the job's expected duration
- **When** an operator requests a forced lock release
- **Then** the release requires supervisor approval
- **And** the approval, the requester, and the reason are written to the job audit trail

## Partial output is reversed before a full rerun @v1 [proposed]

- **Given** a document release job that produced 900 documents before failing
- **When** the operator chooses a full rerun rather than a resume
- **Then** the 900 documents already produced are voided so no duplicates reach customers
- **And** the void is recorded against each affected policy

## Recovery after the business date has rolled @v1 [proposed]

- **Given** a job that failed on business date September 18 and is restarted on September 19
- **When** the job resumes
- **Then** it processes against the September 18 business date, not the current date
- **And** effective dates and accounting periods on its output follow the original business date

## Restart is refused while the job still holds its lock @v1 [published]

- **Given** a job whose worker process is hung but still holding the job lock
- **When** an operator attempts a restart
- **Then** the restart is refused as already running
- **And** the operator is shown the lock owner, the host, and the lock age

## Restart resumes from the last checkpoint @v1 [published]

- **Given** a renewal offer job that failed after committing 4,200 of 11,800 policies
- **When** an operator restarts it
- **Then** processing resumes at policy 4,201
- **And** the 4,200 already committed are not reprocessed

## Skipping a poison record @v1 [proposed]

- **Given** a job that has failed three times on the same policy record
- **When** the operator restarts it with that record skipped
- **Then** the job completes over the remaining records
- **And** the skipped record is placed in the manual work queue with the failure detail
