# Retry failed premium payments on a sensible schedule

**Assigned:** Dana Whitfield

A declined card retries the next night, declines again, and the policy enters
the cancellation path on a payment that would have cleared on payday.

- Retry on a spaced schedule rather than nightly.
- Distinguish insufficient funds from a dead card — one is worth retrying, the
  other needs the insured.
- Hold the cancellation notice while a retry is still pending
  (billing/collect-premium.feature.md).
