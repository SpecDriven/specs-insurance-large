# Add lienholder to auto endorsement

**Assigned:** Miguel Santos

A financed vehicle needs its lienholder on the policy, and today an agent adds
it as a free-text note that nothing downstream reads. The loss payee never
reaches the declaration page, so the bank calls us instead.

- Lienholder name, address, and loan number as real fields on the vehicle,
  not on the policy.
- Endorsing a lienholder mid-term reissues the dec page
  (policy/auto-policy/endorse-policy.feature.md).
- Removing the last lienholder drops the loss-payee clause.
