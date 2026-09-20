# Start the dormancy clock on returned refunds

**Assigned:** Priya Raman

A refund check that comes back undeliverable sits in a suspense account with
no dormancy date attached. Unclaimed property reporting is then assembled by
hand from bank statements, which is exactly as reliable as it sounds.

- Stamp a dormancy start date when a refund is returned
  (billing/refunds/handle-returned-refund.feature.md).
- Drive escheatment eligibility off that date and the state's period
  (billing/refunds/process-escheatment.feature.md).
- Require a documented owner-contact attempt before the item escheats.
