# Define what a customer may endorse themselves

**Assigned:** Jonas Berg

The self-service endorsement flow permits whatever the form happens to render,
which currently includes a coverage change that should refer to underwriting.
Nobody decided this; the form just grew.

- An explicit allow-list of self-service endorsement types per line
  (customer/self-service/start-self-service-endorsement.feature.md).
- Anything outside it becomes a request to the servicing agent instead of a
  dead end (policy/auto-policy/endorse-policy.feature.md).
- Show the premium effect before the customer commits, not on the next bill.
