Feature: Quote Policy

Scenario: Basic Quote @v1 [pub]
Given:
  Potential customer has an account
When:
  Customer requests quote
Then:
  Quote is provided

Scenario: quote-three-tiers-of-policy @v1 [pub]
Offer Gold, Silver, and Bronse plans.

Scenario: quote-three-tiers-of-policy @v2 [pub]
Offer Gold, Silver, and Bronse plans based on customer profile.

Scenario: quote-three-tiers-of-policy @v3 [pub]
Offer Gold, Silver, and Bronse plans based on customer profile.
Support mobile UI.
