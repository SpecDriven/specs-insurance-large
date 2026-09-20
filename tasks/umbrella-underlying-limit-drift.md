# Catch underlying limits drifting below the umbrella

**Assigned:** Dana Whitfield

We verify underlying limits at umbrella issue and never again. When the auto
policy underneath gets reduced at renewal to save money, the umbrella keeps
renewing on limits that no longer exist.

- Re-verify underlying limits on every umbrella renewal, not only at new
  business (policy/umbrella-policy/verify-underlying-limits.feature.md).
- A shortfall notifies the insured and the producer before it becomes a
  coverage argument at claim time.
- Record whether drop-down applies while the shortfall is open
  (policy/umbrella-policy/extend-coverage-over-drop-down.feature.md).
