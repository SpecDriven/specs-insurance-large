# Audit renewal notice lead times by state

**Assigned:** Miguel Santos

Notice requirements vary by state and line, our batch job uses one lead time
for all of them, and we have already had to re-issue a term in one state
because of it.

- Table the statutory minimum per state, line, and notice type.
- Drive the batch from the table.
- Fail loudly, before mailing, when a notice would go out short
  (policy/auto-policy/renew-policy.feature.md).
