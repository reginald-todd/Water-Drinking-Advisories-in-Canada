--5 YEARS

--AB

WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'AB 1 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'AB 1 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'AB 1 Total Years > 5 percentage'
    FROM THESISi.dbo.AB AB1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'AB 3 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'AB 3 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'AB 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.AB AB3
)
SELECT
    P1.[AB 1 Total Years],
    P1.[AB 1 Total Years > 5],
    P1.[AB 1 Total Years > 5 percentage] AS 'AB 1 Total Years > 5 percentage',
    P3.[AB 3 Total Years],
    P3.[AB 3 Total Years > 5],
    P3.[AB 3 Total Years > 5 percentage] AS 'AB 3 Total Years > 5 percentage',
    P3.[AB 3 Total Years > 5 percentage] - P1.[AB 1 Total Years > 5 percentage] AS 'AB Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;


--BC

WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'BC 1 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'BC 1 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'BC 1 Total Years > 5 percentage'
    FROM THESISi.dbo.BC BC1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'BC 3 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'BC 3 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'BC 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.BC BC3
)
SELECT
    P1.[BC 1 Total Years],
    P1.[BC 1 Total Years > 5],
    P1.[BC 1 Total Years > 5 percentage] AS 'BC 1 Total Years > 5 percentage',
    P3.[BC 3 Total Years],
    P3.[BC 3 Total Years > 5],
    P3.[BC 3 Total Years > 5 percentage] AS 'BC 3 Total Years > 5 percentage',
    P3.[BC 3 Total Years > 5 percentage] - P1.[BC 1 Total Years > 5 percentage] AS 'BC Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;


--FHA

WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'FHA 1 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'FHA 1 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'FHA 1 Total Years > 5 percentage'
    FROM THESISi.dbo.FHA FHA1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'FHA 3 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'FHA 3 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'FHA 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.FHA FHA3
)
SELECT
    P1.[FHA 1 Total Years],
    P1.[FHA 1 Total Years > 5],
    P1.[FHA 1 Total Years > 5 percentage] AS 'FHA 1 Total Years > 5 percentage',
    P3.[FHA 3 Total Years],
    P3.[FHA 3 Total Years > 5],
    P3.[FHA 3 Total Years > 5 percentage] AS 'FHA 3 Total Years > 5 percentage',
    P3.[FHA 3 Total Years > 5 percentage] - P1.[FHA 1 Total Years > 5 percentage] AS 'FHA Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;


--FNHA

WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'FNHA 1 Total Years',
        SUM(CASE WHEN [Total Years] >= 5 THEN 1 ELSE 0 END) AS 'FNHA 1 Total Years > 5',
        (CAST(SUM(CASE WHEN [Total Years] >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'FNHA 1 Total Years > 5 percentage'
    FROM THESISi.dbo.FNHA FNHA1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'FNHA 3 Total Years',
        SUM(CASE WHEN [Total Years] >= 5 THEN 1 ELSE 0 END) AS 'FNHA 3 Total Years > 5',
        (CAST(SUM(CASE WHEN [Total Years] >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'FNHA 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.FNHA FNHA3
)
SELECT
    P1.[FNHA 1 Total Years],
    P1.[FNHA 1 Total Years > 5],
    P1.[FNHA 1 Total Years > 5 percentage] AS 'FNHA 1 Total Years > 5 percentage',
    P3.[FNHA 3 Total Years],
    P3.[FNHA 3 Total Years > 5],
    P3.[FNHA 3 Total Years > 5 percentage] AS 'FNHA 3 Total Years > 5 percentage',
    P3.[FNHA 3 Total Years > 5 percentage] - P1.[FNHA 1 Total Years > 5 percentage] AS 'FNHA Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;

--IHA

WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'IHA 1 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'IHA 1 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'IHA 1 Total Years > 5 percentage'
    FROM THESISi.dbo.IHA IHA1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'IHA 3 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'IHA 3 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'IHA 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.IHA IHA3
)
SELECT
    P1.[IHA 1 Total Years],
    P1.[IHA 1 Total Years > 5],
    P1.[IHA 1 Total Years > 5 percentage] AS 'IHA 1 Total Years > 5 percentage',
    P3.[IHA 3 Total Years],
    P3.[IHA 3 Total Years > 5],
    P3.[IHA 3 Total Years > 5 percentage] AS 'IHA 3 Total Years > 5 percentage',
    P3.[IHA 3 Total Years > 5 percentage] - P1.[IHA 1 Total Years > 5 percentage] AS 'IHA Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;


--NHA

WITH Period2 AS
(
    SELECT
        COUNT(*) AS 'NHA 2 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'NHA 2 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'NHA 2 Total Years > 5 percentage'
    FROM THESISii.dbo.NHA NHA2
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'NHA 3 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'NHA 3 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'NHA 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.NHA NHA3
)
SELECT
    P2.[NHA 2 Total Years],
    P2.[NHA 2 Total Years > 5],
    P2.[NHA 2 Total Years > 5 percentage] AS 'NHA 1 Total Years > 5 percentage',
    P3.[NHA 3 Total Years],
    P3.[NHA 3 Total Years > 5],
    P3.[NHA 3 Total Years > 5 percentage] AS 'NHA 3 Total Years > 5 percentage',
    P3.[NHA 3 Total Years > 5 percentage] - P2.[NHA 2 Total Years > 5 percentage] AS 'NHA Difference in Percentage'
FROM Period2 P2
JOIN Period3 P3 ON 1 = 1;


--VIHA

WITH Period1 AS
(
    SELECT
        COUNT(*) AS 'VIHA 1 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'VIHA 1 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'VIHA 1 Total Years > 5 percentage'
    FROM THESISi.dbo.VIHA VIHA1
),
Period3 AS
(
    SELECT
        COUNT(*) AS 'VIHA 3 Total Years',
        SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS 'VIHA 3 Total Years > 5',
        (CAST(SUM(CASE WHEN TotalYears >= 5 THEN 1 ELSE 0 END) AS FLOAT) / COUNT(*)) * 100 AS 'VIHA 3 Total Years > 5 percentage'
    FROM THESISiii.dbo.VIHA VIHA3
)
SELECT
    P1.[VIHA 1 Total Years],
    P1.[VIHA 1 Total Years > 5],
    P1.[VIHA 1 Total Years > 5 percentage] AS 'VIHA 1 Total Years > 5 percentage',
    P3.[VIHA 3 Total Years],
    P3.[VIHA 3 Total Years > 5],
    P3.[VIHA 3 Total Years > 5 percentage] AS 'VIHA 3 Total Years > 5 percentage',
    P3.[VIHA 3 Total Years > 5 percentage] - P1.[VIHA 1 Total Years > 5 percentage] AS 'Difference in Percentage'
FROM Period1 P1
JOIN Period3 P3 ON 1 = 1;


