Feature: Quote Policy

Scenario: Basic Quote @v1 [pub]
Given:
  Potential customer has an account
When:
  Customer requests quote
Then:
  Quote is provided

Scenario: quote-three-tiers-of-policy @v1 [saved]
Offer Gold, Silver, and Bronse plans.
