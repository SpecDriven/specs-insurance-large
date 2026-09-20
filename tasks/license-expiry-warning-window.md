# Warn on license expiry before it blocks production

**Assigned:** Dana Whitfield

The licence check is a hard block on the day it expires. Producers discover
this mid-quote, on a Friday, with a customer on the phone. The renewal
tracking exists; it just never tells anyone.

- A warning window ahead of expiry, surfaced in the portal and by email
  (distribution/producer-licensing/track-license-renewal.feature.md).
- The block itself stays hard on the expiry date
  (distribution/producer-licensing/block-unlicensed-production.feature.md).
- Show the expiring appointment states, since a producer is rarely licensed in
  only one.
