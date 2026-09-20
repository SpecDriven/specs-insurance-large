# Dry-run product version migrations first

**Assigned:** Miguel Santos

Migrating in-force policies to a new product version is run straight against
production and checked afterwards. The last migration left eleven policies
with a coverage that does not exist in the new version.

- A dry-run mode that reports what would change, per policy, with no writes
  (product/versioning/migrate-policies-to-new-version.feature.md).
- Unmappable coverages listed for a decision before the real run
  (product/versioning/version-a-product.feature.md).
- A reversible batch, so a bad migration is undone rather than patched.
