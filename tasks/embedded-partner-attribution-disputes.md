# Settle embedded sale attribution disputes with data

**Assigned:** Miguel Santos

Two embedded partners both claim the same conversions, because our attribution
keys off the last referral parameter and their flows overlap. The monthly
reconciliation call is now ninety minutes of assertion.

- Record the full referral chain, not just the final parameter
  (distribution/embedded/attribute-embedded-sale.feature.md).
- A stated attribution rule with a tie-break both partners have seen
  (distribution/embedded/offer-embedded-quote.feature.md).
- An exportable attribution record per sale so the call has an artifact
  (distribution/embedded/integrate-partner-api.feature.md).
