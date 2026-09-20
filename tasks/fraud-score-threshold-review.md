# Review the fraud score threshold on evidence

**Assigned:** Miguel Santos

The referral threshold was set at launch and never revisited. SIU says most
referrals at the margin are noise; nobody has measured it, because we do not
record what happened to a referred claim in a way that joins back.

- Store the score and threshold on the claim at referral time
  (fraud-siu/detection/score-claim-fraud-risk.feature.md).
- Record investigation outcome against the referring score
  (fraud-siu/investigation/document-investigation-findings.feature.md).
- A quarterly review with hit rate by score band, and a documented change
  process.
