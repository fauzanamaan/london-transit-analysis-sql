# London Transit Analysis

SQL analysis of modeled London Underground journeys: how many trips happen, where and when they start, and why people travel.

**Queries:** [sql/queries.sql](sql/queries.sql) · **Full completed document:** [project-pdf/london-transit-analysis.pdf](project-pdf/london-transit-analysis.pdf)

This is a milestone project from the Global Career Accelerator program. The scenario and data come from the program. It is not affiliated with Transport for London (TfL) or done for it.

## Context

The scenario is a data analyst supporting TfL, using survey-based ridership data to understand peak times and trip purposes so that service and capacity can be planned.

## Data

One table, `tfl.rods`, from TfL's Rolling Origin and Destination Survey. It models journeys on a typical November weekday, grouped by entry zone, time period, origin purpose, destination purpose and distance band, with the number of daily journeys for each group.

## Tools and skills

- SQL: `SUM` with `GROUP BY` on one, two and three columns
- `ORDER BY` on totals and on categories
- `WHERE` with `OR` to filter one trip purpose

## Approach

1. Totaled daily journeys, then split them by entry zone and by time period.
2. Totaled journeys by origin purpose, then by origin and destination purpose together.
3. Broke origin purpose down by time period and by entry zone.
4. LevelUp: filtered to trips with a tourist origin or destination and grouped them by time period.

## Key findings

- **4,878,330 journeys on a typical day**, and 51.7% of them start in Zone 1.
- **PM Peak is the busiest period**, with 1,367,309 journeys.
- **Home is the most common trip origin**, and it also features in the top origin and destination pairs.
- **Trips follow the commute:** people mostly leave home in the morning and leave work in the afternoon.
- **Further out from the center, fewer trips start from work.** Trips from home drop off much less.
- **Tourist trips are fewer and mostly at Midday**, while work trips are concentrated in the AM and PM peaks.
- **Recommendation:** more trains or more space per train between Zones 2 to 5 and Zone 1, in both directions.

## Running the queries

The queries cannot be re-run outside the program. The data exists only in the Global Career Accelerator SQL app, and this repo does not include it.

`sql/queries.sql` holds the queries exactly as written in the completed document, in order, each labeled with its task. Task 2E was a written answer.

## Repo structure

```
london-transit-analysis-sql/
├── sql/
│   └── queries.sql                    the queries, labeled by task
└── project-pdf/
    └── london-transit-analysis.pdf    full completed document with written answers
```
