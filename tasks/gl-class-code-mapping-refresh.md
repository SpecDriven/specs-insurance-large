# Refresh the general liability class code table

**Assigned:** Aisha Bello

Our class code table was loaded once and has been patched by hand since. Two
retired codes are still selectable, and three current ones are missing, so
producers pick the nearest wrong thing.

- A dated import of the current class code set, with retired codes marked
  rather than deleted (policy/general-liability/rate-by-class-code.feature.md).
- Quotes on a retired code get an explicit replacement suggestion
  (policy/general-liability/quote-general-liability.feature.md).
- Keep the historical mapping so in-force policies still rate on their bound
  code.
