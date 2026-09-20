# Plan the insurance score vendor cutover

**Assigned:** Miguel Santos

The scoring vendor is retiring the endpoint we use and the replacement returns
a different band structure. Our eligibility rules are written against the old
bands in three places, none of which reference each other.

- A single mapping from vendor bands to our internal tiers
  (underwriting/eligibility/verify-insurance-score.feature.md).
- A dual-call period where both scores are stored and compared before we
  switch the decision over
  (underwriting/eligibility/screen-applicant-eligibility.feature.md).
- Adverse action reasons re-checked against the new band definitions.
