# Decide which policies can share one bill

**Assigned:** Aisha Bello

Consolidated billing is offered whenever a service rep thinks it will help,
which means policies with different named insureds end up on one invoice and
the payment allocation afterwards is a puzzle.

- Explicit eligibility: same billing party, compatible terms, same currency
  (billing/invoicing/consolidate-account-billing.feature.md).
- Allocation of a partial payment across consolidated items is defined, not
  first-in-first-out by accident
  (billing/payments/apply-payment-to-balance.feature.md).
- Removing a policy from a consolidated account leaves both bills correct.
