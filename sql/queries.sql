-- Queries copied as written from the completed document. Each was run on its own in the Global Career Accelerator SQL app, so they are not meant to run as one script.

-- Task 1A
SELECT
  SUM(daily_journeys) as num_journeys
FROM
  tfl.rods

-- Task 1B
SELECT
  entry_zone,
  SUM(daily_journeys) as num_journeys
FROM
  tfl.rods
GROUP BY
  entry_zone

-- Task 1C
SELECT
  time_period,
  SUM(daily_journeys) as num_journeys
FROM
  tfl.rods
GROUP BY
  time_period
ORDER BY num_journeys DESC

-- Task 2A
SELECT
  origin_purpose,
  SUM(daily_journeys) as num_journeys
FROM
  tfl.rods
GROUP BY
  origin_purpose
ORDER BY
  num_journeys DESC

-- Task 2B
SELECT
  origin_purpose,
  destination_purpose,
  SUM(daily_journeys) as num_journeys
FROM
  tfl.rods
GROUP BY
  origin_purpose,
  destination_purpose
ORDER BY
  num_journeys DESC

-- Task 2C
SELECT
  origin_purpose,
  time_period,
  SUM(daily_journeys) as num_journeys
FROM
  tfl.rods
GROUP BY
  origin_purpose,
  time_period
ORDER BY
  origin_purpose

-- Task 2D
SELECT
  origin_purpose,
  entry_zone,
  SUM(daily_journeys) as num_journeys
FROM
  tfl.rods
GROUP BY
  origin_purpose,
  entry_zone
ORDER BY
  entry_zone

-- LevelUp A
SELECT
  origin_purpose,
  destination_purpose,
  time_period,
  SUM(daily_journeys) as num_journeys
FROM
  tfl.rods
WHERE
  origin_purpose = 'Tourist'
  OR destination_purpose = 'Tourist'
GROUP BY
  origin_purpose,
  destination_purpose,
  time_period
ORDER BY
  time_period,
  num_journeys DESC
