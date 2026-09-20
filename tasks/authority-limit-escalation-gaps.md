# Close the gaps in authority escalation

**Assigned:** Aisha Bello

Authority limits are defined by premium, but several referral types have no
premium yet when they escalate, so they route to whoever is listed as the
fallback. The fallback has been the same person since 2023.

- Escalation rules that cover limit, exposure, and non-premium referral types
  (underwriting/referrals/escalate-authority-limit.feature.md).
- Named backups per level, with an out-of-office path that is not one person
  (underwriting/referrals/refer-to-underwriter.feature.md).
- Every escalation records the authority basis it was decided under
  (underwriting/referrals/record-underwriter-decision.feature.md).
