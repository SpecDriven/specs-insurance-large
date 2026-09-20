# Model Rate Change Impact

Actuarial modelling of a proposed rate revision before it is filed with a
state department of insurance. The model reprices the in-force book at the
proposed rates and produces the dislocation exhibits the filing requires.

**Assigned:** Priya Raman

## Compare two candidate revisions @v1 [proposed]

- **Given** two candidate revisions, one at +6.4% overall and one at +4.9% with a wider base rate change
- **When** the actuary runs a side-by-side comparison
- **Then** both candidates are scored on overall change, dislocation over +25%, and projected retention
- **And** only the selected candidate may be promoted into a filing package

## Compare two candidate revisions @v2 [proposed]

Adds invalidation of the comparison when a base rate is corrected after
scoring.

- **Given** a scored comparison of two candidate revisions
- **When** the base rate table of either candidate is corrected after scoring
- **Then** the comparison is withdrawn and every dependent exhibit is marked out of date
- **And** both candidates must be rescored before either can be promoted into a filing package

## Dislocation exhibit by change band @v1 [published]

- **Given** a completed repricing run
- **When** the actuary requests the dislocation exhibit
- **Then** policies are bucketed by percentage change with counts and premium in each band

| change band      | policies | written premium | share of book |
| ---------------- | -------- | --------------- | ------------- |
| decrease over 5% | 3,140    | $2.1M           | 6.5%          |
| -5% to 0%        | 9,880    | $6.4M           | 20.5%         |
| 0% to +10%       | 24,610   | $17.3M          | 51.1%         |
| +10% to +25%     | 9,110    | $7.8M           | 18.9%         |
| over +25%        | 1,460    | $1.4M           | 3.0%          |

## Extreme dislocation blocks the filing package @v1 [published]

- **Given** a modelled revision where 4.2% of policies exceed a +25% change
- **When** the filing package is assembled and the state threshold is 3%
- **Then** the package is blocked from submission
- **And** the actuary must attach a capping plan (cap-renewal-rate-increase.feature.md) before the block clears

## Reprice the in-force book at proposed rates @v1 [published]

- **Given** a personal auto rate revision proposed for Arizona effective July 1
- **And** 48,200 in-force policies as of the May 31 extract
- **When** the actuary runs the impact model
- **Then** the overall indicated premium change is reported as +6.4%
- **And** the exhibit shows written premium at current rates and at proposed rates side by side

## Segment view isolates a territory driver @v1 [proposed]

- **Given** a statewide indication of +6.4%
- **When** the actuary decomposes the change by rating territory and class code
- **Then** territory 14 is shown at +19.8% against a statewide +6.4%
- **And** the decomposition attributes 3.1 points of the statewide change to territory relativity alone

## Stale exposure extract invalidates a run @v1 [published]

- **Given** an impact model run against an exposure extract dated 95 days ago
- **When** the actuary attempts to certify the run for filing
- **Then** certification is refused because the extract exceeds the 90-day currency rule
- **And** the run is retained for reference but marked not filing-grade
