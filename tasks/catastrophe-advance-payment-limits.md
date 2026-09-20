# Set advance payment authority before the next event

**Assigned:** Dana Whitfield

During the last hail event, advance payments were approved by whoever picked
up the phone, at amounts that varied by a factor of four for identical damage.
We reconciled it afterward, badly.

- Published advance payment amounts by event severity and coverage
  (claims/catastrophe/issue-advance-payment.feature.md).
- Authority tied to role, so a deployed team member knows their own limit
  (claims/catastrophe/deploy-catastrophe-team.feature.md).
- Advances net against the eventual settlement automatically, with the offset
  visible on the payment record.
