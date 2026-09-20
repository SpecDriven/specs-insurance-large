# Reconcile the dunning sequence with state notice rules

**Assigned:** Dana Whitfield

Billing sends the same three-notice sequence everywhere, and compliance
maintains a separate table of required notice periods that billing does not
read. In two states our second notice arrives after the statutory deadline.

- One source for notice timing, consumed by the dunning job
  (billing/collections/send-dunning-notices.feature.md).
- Reconcile against the state table and fail loudly on a mismatch
  (compliance/state-mandates/honor-state-specific-notice-periods.feature.md).
- Record the sent date per notice so we can prove the sequence later.
