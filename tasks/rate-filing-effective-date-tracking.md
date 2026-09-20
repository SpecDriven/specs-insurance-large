# Track filed effective dates against implementation

**Assigned:** Jonas Berg

A filing is approved with an effective date for new and renewal business, and
implementation happens when the rate load is scheduled. Twice those dates have
not matched, and we discovered it from an agent's complaint.

- The approved dates carried onto the implementation record, not retyped
  (compliance/filings/track-filing-approval.feature.md).
- A check that the loaded rates activate on the filed dates
  (compliance/filings/implement-approved-rates.feature.md).
- A mismatch blocks activation and raises it to product
  (product/rate-filings/model-rate-change-impact.feature.md).
