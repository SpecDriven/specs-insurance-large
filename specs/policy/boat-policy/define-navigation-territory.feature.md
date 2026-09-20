# Define Navigation Territory

The geographic waters within which the vessel is covered, the lay-up
period, and how coverage responds when the vessel leaves the declared
territory.

## Hurricane box restriction between June and November @v1 [published]

- **Given** a territory excluding waters south of 26 degrees north latitude from June 1 to November 1
- **When** the vessel is moored in Key West on August 12
- **Then** no hull coverage applies while the vessel remains in the restricted zone
- **And** liability coverage continues in force

## Inland and coastal waters territory @v1 [published]

- **Given** a policy declaring coastal waters within 75 nautical miles of the US mainland
- **When** the declarations page is issued
- **Then** the navigation territory and its seaward limit are stated on the form
- **And** the Great Lakes and inland navigable waters are included

## Lay-up period conflicts with declared storage @v1 [proposed]

- **Given** a declared lay-up from December 1 through March 1 with a 20% lay-up credit
- **When** a marina invoice shows the vessel in the water on January 18
- **Then** the lay-up credit is removed retroactively to inception
- **And** additional premium is billed and the insured is notified of the change

## Loss outside the declared territory is excluded @v1 [published]

- **Given** a navigation limit of 75 nautical miles offshore
- **When** the vessel is disabled 140 nautical miles offshore during a fishing trip
- **Then** the physical damage claim is denied for operation outside the navigation territory
- **And** the vessel's GPS track is retained as supporting documentation

## Mexican and Bahamian waters require an endorsement @v1 [proposed]

- **Given** an insured planning a Bimini crossing in March
- **When** the foreign waters endorsement is added
- **Then** coverage extends to Bahamian waters for the endorsement period
- **And** the insured is advised that local liability requirements are not satisfied by this policy

## Temporary navigation extension for a delivery voyage @v1 [proposed]

- **Given** the insured is relocating the vessel from Florida to Rhode Island in May
- **When** a delivery voyage endorsement is requested 10 days before departure
- **Then** the territory is extended for the stated route and dates for an additional premium
- **And** the extension lapses automatically at the stated arrival date
