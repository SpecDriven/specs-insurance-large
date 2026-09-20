# Absorb the new motor vehicle report layout

**Assigned:** Aisha Bello

The MVR vendor added violation subcodes and moved two columns. Our parser
reads by position, so since the change, minor violations in three states come
back unclassified and someone keys them in from the PDF.

- Parse by field name against the vendor's current schema
  (partners/third-party-data/order-motor-vehicle-report.feature.md).
- Unrecognised violation codes land in a review queue instead of being
  dropped silently.
- Reprocess the reports we have been keying by hand since the change
  (policy/auto-policy/add-driver.feature.md).
