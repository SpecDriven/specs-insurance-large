# Build the parallel-run harness for rate changes

**Assigned:** Jonas Berg

Rate changes go live having been checked against a handful of hand-picked
quotes. We should be able to rate a full term of real quotes on the new tables
before anyone files anything.

- Replay stored quote inputs through a candidate rate version.
- Premium impact by segment, with the outliers listed rather than averaged
  away.
- Runs on a filing candidate as a matter of course, not on request
  (roadmap/rate-filing-agility.md).
