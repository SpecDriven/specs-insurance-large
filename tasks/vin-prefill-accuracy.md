# Fix VIN prefill on motorcycle quotes

**Assigned:** Aisha Bello

The VIN decoder we use for autos returns a passenger-vehicle body style for a
good share of motorcycles, and the quote then rates on the wrong symbol.

- Route motorcycle VINs to a decoder that knows them.
- Fall back to manual make/model/CC entry rather than a wrong decode.
- Alert when decoded displacement and the rating class disagree
  (policy/motorcycle-policy/quote-motorcycle-policy.feature.md).
