-- =============================================
-- NETFLIX SQL PROJECT
-- Dataset: Netflix Movies and TV Shows
-- Total Rows: 5619
-- =============================================


-- =============================================
-- BASIC ANALYSIS
-- =============================================

-- Q1. How many Movies vs TV Shows are on Netflix?
-- Insight: Understanding content type distribution on Netflix
SELECT type, COUNT(*) AS total
FROM netflix
GROUP BY type
ORDER BY total DESC;
-- Result: Movies dominate Netflix content with significantly more
--         titles compared to TV Shows


-- Q2. What are the top 10 most common ratings on Netflix?
-- Insight: Understanding what age groups Netflix targets the most
SELECT rating, COUNT(*) AS total 
FROM netflix
GROUP BY rating
ORDER BY COUNT(*) DESC
LIMIT 10;
-- Result: TV-MA dominates with TV-14 right after it and then TV-PG,
--         suggesting Netflix targets mature audiences the most


-- Q3. How many titles were added to Netflix each year?
-- Insight: Understanding which years Netflix added the most content
SELECT year_added, COUNT(*) AS total
FROM netflix
GROUP BY year_added
ORDER BY total DESC;
-- Result: 2019 had the most titles added with 1334, followed by
--         2020 with 1290 and 2018 with 1115


-- =============================================
-- FILTERING
-- =============================================

-- Q4. Show all Movies released in 2020
-- Insight: Exploring recent movie additions to Netflix in 2020
SELECT title, director, country, release_year
FROM netflix
WHERE type = 'Movie' AND release_year = 2020;
-- Result: 122 movies were released on Netflix in 2020


-- Q5. Show all content from 'United States' sorted by release_year newest to oldest
-- Insight: Exploring the most recent US produced content on Netflix
SELECT * FROM netflix
WHERE country = 'United States'
ORDER BY release_year DESC;
-- Result: Latest US movie on Netflix was released in 2021 titled Army of the Dead


-- =============================================
-- AGGREGATION
-- =============================================

-- Q6. Which top 5 countries produce the most Netflix content?
-- Insight: Identifying which countries dominate Netflix content production
SELECT country, COUNT(*) AS total 
FROM netflix
GROUP BY country
ORDER BY COUNT(*) DESC
LIMIT 5;
-- Result: United States leads with 1224 titles, followed by
--         India with 937 and United Kingdom with 311


-- Q7. What is the most common duration for Movies?
-- Insight: Understanding the most typical runtime for Netflix movies
SELECT duration, COUNT(*) AS total 
FROM netflix
WHERE type = 'Movie'
GROUP BY duration
ORDER BY COUNT(*) DESC;
-- Result: 90 minutes is the most common movie duration with 107 titles,
--         followed by 93 minutes with 103 and 91 minutes with 101


-- =============================================
-- INTERMEDIATE
-- =============================================

-- Q8. How many titles does each director have, only show directors
--     with more than 3 titles, sorted highest to lowest?
-- Insight: Identifying the most prolific directors on Netflix
-- Note: 'Unknown' values excluded as they represent missing data
SELECT director, COUNT(*) AS total 
FROM netflix
WHERE director != 'Unknown'
GROUP BY director
HAVING COUNT(*) > 3
ORDER BY COUNT(*) DESC;
-- Result: Cathy Garcia-Molina leads with 13 titles, followed by
--         Youssef Chahine with 12 and David Dhawan with 8


-- Q9. Show the number of Movies and TV Shows added each year,
--     sorted by year descending
-- Insight: Understanding content type trends Netflix added per year
SELECT type, year_added, COUNT(*) AS total 
FROM netflix
GROUP BY type, year_added
ORDER BY year_added DESC;
-- Result: 2021 was dominated by Movies with 532 titles,
--         followed by TV Shows in the same year with 216


-- Q10. Which listed_in category appears the most on Netflix?
-- Insight: Identifying the most popular content genres on Netflix
SELECT listed_in, COUNT(*) AS total 
FROM netflix
GROUP BY listed_in
ORDER BY COUNT(*) DESC;
-- Result: Dramas & International Movies lead with 337 titles, followed by
--         Comedies, Dramas & International Movies with 260,
--         and Dramas, Independent & International Movies with 243