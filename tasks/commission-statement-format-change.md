# Handle the new commission statement layout

**Assigned:** Miguel Santos

Our statement generator emits a fixed-width file that two of the larger
agencies can no longer import; they changed accounting systems and asked for
delimited output. Right now someone reformats it in a spreadsheet monthly.

- A per-agency statement format preference, defaulting to the current layout
  (billing/commissions/process-commission-statement.feature.md).
- Chargebacks appear as their own signed lines rather than netted silently
  (billing/commissions/charge-back-commission.feature.md).
- Regenerating a prior period produces the same figures it did the first time.
