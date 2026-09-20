# Make adjusters say why a reserve moved

**Assigned:** Jonas Berg

Reserve movements are recorded as a number and a timestamp. Actuarial asks
every quarter why development looks the way it does, and the only answer
available is to read the claim notes one file at a time.

- A required reason code on every reserve change above a threshold
  (claims/property-claims/set-claim-reserve.feature.md).
- A short free-text note alongside the code, not instead of it.
- Reason codes carry through to the loss ratio reporting extract
  (reporting/management/produce-loss-ratio-report.feature.md).
