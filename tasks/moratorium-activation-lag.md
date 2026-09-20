# Cut the lag on declaring a wind moratorium

**Assigned:** Jonas Berg

**Status:** Done

A named storm enters the forecast cone and we spend most of a day deciding who
may flip the moratorium switch. New business kept binding in the meantime on
the last two events.

- A named role who can activate, with a documented standing trigger
  (underwriting/appetite/apply-moratorium.feature.md).
- Activation blocks new business and endorsements that increase exposure in
  the affected territory
  (underwriting/appetite/restrict-by-territory.feature.md).
- Quotes in flight get a clear message rather than a rating error.
