# Track License Renewal

Producer licenses renew on state-specific cycles, most commonly every two
years on the producer's birth month. Acme tracks upcoming expirations so
production is never interrupted by an avoidable lapse.

**Assigned:** Aisha Bello

## Continuing education shortfall is flagged before renewal @v1 [proposed]

- **Given** a producer needing 24 continuing education credits including 3 ethics credits
- **And** 19 credits with 3 ethics credits on file 45 days before expiration
- **When** the credit reconciliation runs
- **Then** the producer is flagged as 5 credits short
- **And** the flag clears automatically when the registry reports the completed credits

## Expiration reminders escalate as the date approaches @v1 [published]

- **Given** a producer whose Ohio license expires 30 September 2026
- **When** the renewal tracker runs each morning
- **Then** reminders are sent at 90, 60, 30, and 7 days before expiration
- **And** the 7-day reminder copies the agency principal

## Lapsed license enters the state reinstatement window @v1 [published]

- **Given** an Ohio license that expired 30 September 2026 without renewal
- **When** the producer renews on 20 October 2026 within the state's 12-month reinstatement window
- **Then** the license is restored without re-examination
- **And** business written during the lapse is reviewed for validity

## Multi-state producer is tracked per jurisdiction @v1 [published]

- **Given** a producer licensed in Ohio, Kentucky, and Tennessee with different expiration dates
- **When** the Kentucky license approaches expiration
- **Then** only Kentucky production is at risk and only Kentucky is flagged
- **And** Ohio and Tennessee authority is unaffected

## Producer departure stops reminders @v1 [proposed]

- **Given** a producer marked as departed from the agency on 3 June 2026
- **When** the renewal tracker next runs
- **Then** no further reminders are sent for that producer
- **And** the producer's portal access is deactivated (../agent-portal/manage-portal-user-access.feature.md)

## Renewal confirmed by the registry clears the tracker @v1 [published]

- **Given** a producer flagged as expiring within 30 days
- **When** the registry reports a renewed license with a new expiration of 30 September 2028
- **Then** the tracking flag is cleared
- **And** the new expiration date drives the next reminder cycle
