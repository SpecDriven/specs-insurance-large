# Stop linking households on address alone

**Assigned:** Aisha Bello

Household linking matches on mailing address, so apartment buildings produce
households of forty people and a multi-policy discount we did not intend. Two
of those got through last quarter.

- Linking needs a second corroborating signal, not address by itself
  (customer/accounts/link-household-policies.feature.md).
- A review step for links above a member count, before any discount applies.
- Unlinking is possible and reverses the discount prospectively
  (customer/accounts/merge-duplicate-accounts.feature.md).
