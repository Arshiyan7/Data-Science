# Netflix SQL Analysis 

## Project Overview
This project analyzes the Netflix Movies and TV Shows dataset using PostgreSQL.
The goal is to extract meaningful business insights from the data using SQL queries
covering filtering, aggregation, grouping and more.

---

## Dataset
- **Source:** Netflix Movies and TV Shows (CSV)
- **Total Rows:** 5619
- **Columns:** show_id, type, title, director, cast, country, date_added,
  release_year, rating, duration, listed_in, description, year_added

---

## Tools Used
- **PostgreSQL** — database and query execution
- **pgAdmin 4** — database management and CSV import
- **Python & Pandas** — data cleaning before import

---

## Business Questions Answered

### Basic Analysis
1. How many Movies vs TV Shows are on Netflix?
2. What are the top 10 most common ratings on Netflix?
3. How many titles were added to Netflix each year?

### Filtering
4. Show all Movies released in 2020
5. Show all content from United States sorted by release year newest to oldest

### Aggregation
6. Which top 5 countries produce the most Netflix content?
7. What is the most common duration for Movies?

### Intermediate
8. How many titles does each director have, only directors with more than 3 titles?
9. Show the number of Movies and TV Shows added each year
10. Which category appears the most on Netflix?

---

## Key Insights

- **Movies dominate Netflix** — Movies make up the majority of Netflix content
  compared to TV Shows

- **Netflix targets mature audiences** — TV-MA is the most common rating on
  Netflix followed by TV-14, suggesting the platform focuses heavily on
  mature content

- **2019 was Netflix's biggest year** — 1334 titles were added in 2019 alone,
  followed by 2020 with 1290 and 2018 with 1115

- **United States leads content production** — with 1224 titles, followed by
  India with 937 which was surprising given how dominant US content usually is
  assumed to be, and United Kingdom with 311

- **90 minutes is the sweet spot** — the most common movie duration on Netflix
  is 90 minutes, with 93 and 91 minutes close behind, suggesting Netflix
  prefers shorter focused movies

- **Dramas and International Movies dominate genres** — appearing in the top 3
  most common categories, showing Netflix has a strong focus on international
  dramatic content

- **Cathy Garcia-Molina is Netflix's most prolific director** — with 13 titles,
  followed by Youssef Chahine with 12 and David Dhawan with 8

---

## Project Structure
- netflix-sql-analysis/
- ├── netflix_project.sql    ← all queries with insights and results documented
- └── README.md              ← project overview and key findings

---

## What I Learned

- How to design and create a PostgreSQL table from scratch matching a CSV structure
- How to import real world datasets into PostgreSQL using pgAdmin
- How to write clean documented SQL covering SELECT, WHERE, GROUP BY,
  HAVING, CASE, aggregate functions and date functions
- How to think like an analyst — asking meaningful business questions
  and interpreting results rather than just writing queries
- The importance of data cleaning before importing — having clean data
  from the Pandas EDA phase made the SQL analysis much smoother
- How to handle reserved keywords in PostgreSQL such as wrapping
  'cast' in double quotes to avoid syntax errors

---

## Connect
Feel free to check out my other projects on GitHub or connect with me on LinkedIn!