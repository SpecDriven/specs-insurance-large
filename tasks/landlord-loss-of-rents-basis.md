# Base loss of rents on a stated rent, not a guess

**Assigned:** Priya Raman

Loss of rents is written as a flat percentage of Coverage A because nobody
collects the actual rent roll. On a duplex that is roughly right; on a
six-unit property it is badly wrong in one direction or the other.

- Capture monthly rent per unit at quote
  (policy/landlord-policy/quote-landlord-policy.feature.md).
- Derive the loss of rents limit from stated rent and a months-of-coverage
  choice (policy/landlord-policy/cover-loss-of-rents.feature.md).
- Rent changes are an endorsement with an effective date
  (policy/landlord-policy/endorse-landlord-policy.feature.md).
