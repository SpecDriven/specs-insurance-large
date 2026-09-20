# Make nightly batch failures visible by morning

**Assigned:** Priya Raman

**Status:** Done

When a step in the nightly cycle fails, the downstream steps run anyway on
stale data and the first person to notice is whoever opens billing at eight.
The job log says so, but nobody reads the job log.

- Dependencies between steps honoured, so a failed step halts its dependents
  (platform/jobs/run-nightly-batch-cycle.feature.md).
- A morning status summary naming what failed and what did not run
  (platform/jobs/recover-a-failed-job.feature.md).
- Reruns are idempotent and say what they reprocessed.
