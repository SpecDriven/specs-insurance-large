# Order Property Inspection

Ordering exterior, interior, and replacement cost inspections from third
party vendors, and tracking them to completion
(review-inspection-findings.feature.md).

## Duplicate order suppressed for the same address @v1 [proposed]

- **Given** a completed inspection for the address within the past 12 months
- **When** a new order is triggered by a policy rewrite
- **Then** the existing report is reused and no new order is placed
- **And** the reuse and report date are recorded on the new policy

## Exterior inspection ordered on a new homeowners policy @v1 [published]

- **Given** a newly bound HO-3 with a dwelling limit of $480,000
- **When** the new business inspection rule fires
- **Then** an exterior inspection is ordered from the assigned vendor within 1 business day
- **And** the order includes the risk address, contact phone, and inspection type

[test: exteriorInspectionOrderedOnANewHomeownersPolicy : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/OrderPropertyInspectionTest.java#L28 ]

## Inspection not returned by the vendor due date @v1 [proposed]

- **Given** an exterior inspection ordered 21 days ago with no result
- **When** the overdue monitor runs
- **Then** the vendor is chased and the order is marked overdue
- **And** the underwriter is notified if the result is still missing at day 30

## Inspection ordered on a vacant dwelling @v1 [published]

- **Given** a risk reported as unoccupied for more than 60 days
- **When** the inspection is ordered
- **Then** the vacancy is noted on the order so the vendor documents securement
- **And** a loss control survey is also opened (order-loss-control-survey.feature.md)

[test: inspectionOrderedOnAVacantDwelling : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/OrderPropertyInspectionTest.java#L71 ]

## Interior inspection required above a value threshold @v1 [published]

- **Given** a dwelling limit above the $750,000 interior inspection threshold
- **When** the inspection is ordered
- **Then** a full interior and exterior inspection is ordered and an appointment is requested
- **And** the insured is notified that access to the interior is required

| dwelling limit          | inspection type      | vendor due date |
| ----------------------- | -------------------- | --------------- |
| Under $300,000          | none                 | —               |
| $300,000 to $749,999    | exterior only        | 21 days         |
| $750,000 to $1,999,999  | interior + exterior  | 30 days         |
| $2,000,000 and above    | engineer walkthrough | 45 days         |

[test: interiorInspectionRequiredAboveAValueThreshold : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/OrderPropertyInspectionTest.java#L50 ]

## Rush order after a mid-term coverage increase @v1 [proposed]

- **Given** an insured who increases the dwelling limit from $690,000 to $980,000
- **When** the increase crosses the interior inspection threshold
- **Then** a rush interior inspection is ordered with a 10-day due date
- **And** the increase is bound subject to a satisfactory inspection

## Vendor cannot gain access after three attempts @v1 [published]

- **Given** a vendor who documents three failed access attempts over 14 days
- **When** the no-access result is returned
- **Then** the policy is flagged for non-renewal for refusal to permit inspection
- **And** the insured receives a final access request with a 10-day deadline

[test: vendorCannotGainAccessAfterThreeAttempts : https://github.com/SpecDriven/insurance-cap-java/blob/main/srv/src/test/java/com/acme/insurance/underwriting/OrderPropertyInspectionTest.java#L90 ]
