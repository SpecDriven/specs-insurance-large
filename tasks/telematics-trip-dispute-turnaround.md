# Answer trip disputes inside the scoring period

**Assigned:** Priya Raman

A driver disputes a hard-braking event, we take two weeks to look at it, and
by then the score that used it has already set the renewal discount. The
correction, when it comes, applies to nothing.

- A turnaround target that fits inside the scoring window
  (telematics/feedback/dispute-a-trip-event.feature.md).
- An upheld dispute triggers a rescore rather than a note
  (telematics/scoring/calculate-driving-score.feature.md).
- If the rescore lands after the discount applied, correct it at renewal and
  say so (telematics/scoring/apply-telematics-discount.feature.md).
