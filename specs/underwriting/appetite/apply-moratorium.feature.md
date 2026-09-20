# Apply Binding Moratorium

A temporary suspension of new business and coverage increases in an area
under imminent threat, usually a named storm, wildfire, or flood event.

## Coverage increases blocked during a moratorium @v1 [published]

- **Given** an active wildfire moratorium for a ZIP code
- **When** an insured requests a $200,000 dwelling limit increase
- **Then** the endorsement is blocked until the moratorium lifts
- **And** the request is queued for automatic reprocessing after the lift

## Existing policies continue in force @v1 [published]

- **Given** 3,100 in-force policies inside a moratorium area
- **When** the moratorium is active
- **Then** all in-force coverage continues and claims are handled normally
- **And** renewals within the area are processed without interruption

## Moratorium lifts automatically after the event @v1 [published]

- **Given** a moratorium with a scheduled lift 72 hours after the storm watch is cancelled
- **When** the watch is cancelled at 6:00 AM Thursday
- **Then** the moratorium lifts at 6:00 AM Sunday unless a manual hold is placed
- **And** agents are notified when binding reopens

## Named storm moratorium opens on a watch @v1 [published]

- **Given** a hurricane watch posted for 9 coastal counties
- **When** the moratorium is opened by the catastrophe desk
- **Then** new business binding is suspended in those counties immediately
- **And** the moratorium identifier, counties, and open time are broadcast to agents

## Overlapping moratoria for different perils @v1 [proposed]

- **Given** a county under both a wildfire moratorium and a flood moratorium
- **When** the wildfire moratorium lifts
- **Then** binding remains suspended under the flood moratorium
- **And** the remaining moratorium and its expected lift date are shown to the agent

## Quote issued before the moratorium can still bind @v1 [proposed]

- **Given** a quote issued 2 days before the moratorium opened
- **When** the agent binds during the moratorium
- **Then** the bind is permitted under the pre-existing quote exception
- **And** the exception is logged with the quote's issue timestamp
