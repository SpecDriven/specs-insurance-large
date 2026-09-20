# Attribute an Embedded Sale

Attribution decides which partner and which licensed agency earn credit
for a policy sourced through an embedded channel, and therefore who is
paid (../agency-management/set-commission-schedule.feature.md).

## Attribution is frozen once the first commission is paid @v1 [published]

- **Given** a policy whose first commission has been paid to partner LEASEHUB
- **When** a correction request seeks to reattribute the policy
- **Then** the change requires distribution management approval
- **And** any resulting adjustment is made as a chargeback and re-credit, not a silent edit

[test: attributionIsFrozenOnceTheFirstCommissionIsPaid : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/AttributeEmbeddedSaleTest.java#L103 ]

## Cancelled policy reverses partner credit @v1 [proposed]

- **Given** an embedded policy flat cancelled 6 days after bind
- **When** the cancellation is processed (policy/auto-policy/cancel-policy.feature.md)
- **Then** the partner's attribution is reversed
- **And** the sale is removed from the partner's production count for the period

## Customer who abandons and returns directly keeps partner credit @v1 [proposed]

- **Given** a customer who received an embedded offer on 2 June 2026 and did not accept
- **When** the same customer binds the same coverage on Acme's direct site on 9 June 2026
- **Then** the partner retains attribution under the 30-day look-back
- **And** attribution passes to the direct channel after the look-back expires

## Last touch wins when two partners present the same risk @v1 [published]

- **Given** embedded offers from two partners for the same applicant within the look-back window
- **When** the applicant binds using the second partner's token
- **Then** the second partner receives full attribution
- **And** the first partner's offer is closed as not taken

[test: lastTouchWinsWhenTwoPartnersPresentTheSameRisk : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/AttributeEmbeddedSaleTest.java#L67 ]

## Policy bound from a partner token carries the partner code @v1 [published]

- **Given** a bind request presenting quote token QT-4471-88 issued to partner LEASEHUB
- **When** the policy is bound
- **Then** the partner code LEASEHUB is stamped on the policy
- **And** the licensed agency of record for that partner is recorded as producer

[test: policyBoundFromAPartnerTokenCarriesThePartnerCode : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/distribution/AttributeEmbeddedSaleTest.java#L35 ]
