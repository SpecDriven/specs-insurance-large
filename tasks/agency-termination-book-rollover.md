# Handle the book when an agency is terminated

**Assigned:** Jonas Berg

When we terminate an appointment, the policies stay and the servicing agent
field still points at an agency that no longer has portal access. Renewals go
out with a phone number nobody answers.

- A required destination for the book at termination: reassign, direct, or
  non-renew
  (distribution/agency-management/terminate-agency-relationship.feature.md).
- Commission handling for the run-off period stated up front
  (distribution/agency-management/set-commission-schedule.feature.md).
- Portal access revoked on the termination date, not whenever someone
  remembers (distribution/agent-portal/manage-portal-user-access.feature.md).
