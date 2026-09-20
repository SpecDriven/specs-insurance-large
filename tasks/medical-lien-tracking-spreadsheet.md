# Retire the medical lien spreadsheet

**Assigned:** Miguel Santos

Liens on bodily injury files live in a shared spreadsheet that one person
maintains. When she is out, settlements either wait or go out without the lien
resolved, and we have paid twice more than once.

- Liens as records on the claim with holder, amount, and status
  (claims/liability-claims/resolve-medical-lien.feature.md).
- An unresolved lien blocks settlement release
  (claims/liability-claims/negotiate-third-party-settlement.feature.md).
- Import the existing spreadsheet once, then make it read-only.
