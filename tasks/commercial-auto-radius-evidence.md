# Require evidence for commercial auto radius class

**Assigned:** Jonas Berg

Radius of operation is rated off whatever the agent typed, and local radius is
typed far more often than the fleet's own mileage supports. We find out at
audit, or at a loss three states away.

- A declared radius needs a supporting basis: garaging address plus stated
  operating area.
- Flag the quote when the declared radius conflicts with the vehicle schedule
  (policy/commercial-auto/rate-by-radius-and-use.feature.md).
- Radius changes mid-term go through an endorsement, not a silent field edit
  (policy/commercial-auto/endorse-commercial-auto.feature.md).
