# COVID-19 Global Impact Dashboard — Power BI

An interactive Power BI dashboard analyzing the global spread and impact of COVID-19 in 2020, 
covering confirmed cases, deaths, recoveries, and geographic distribution across countries.

## Dashboard Preview
![image alt](https://github.com/Arshiyan7/Data-Science/blob/79983e682817a45310661e2b72dae86f2fb0dcd2/powerbi.png)


## Business Questions Answered

1. What is the total number of confirmed cases worldwide?
2. What is the total number of deaths worldwide?
3. What is the total number of recoveries worldwide?
4. What is the global death rate?
5. How did confirmed cases grow over time?
6. How did deaths trend over time compared to recoveries?
7. Which 10 countries have the highest confirmed cases?
8. Which 10 countries have the highest death counts?
9. How are cases distributed across the world?
10. What is the recovery rate vs death rate globally?

## Dashboard Components

| Visual | Description |
|--------|-------------|
| KPI Cards | Total cases, total deaths, total recoveries, global death rate |
| Line Charts | Growth of confirmed cases and deaths vs recoveries over time |
| Bar Charts | Top 10 countries by confirmed cases and death count |
| Donut Chart | Global outcome distribution — recovery rate vs death rate |
| World Map | Geographic bubble map of confirmed cases by country |
| Slicers | Filter by month and country |

## Key Insights

- USA had the highest confirmed cases and death count by a significant margin in 2020
- Recovery rate globally stood at approximately 94% with a death rate of around 5.5%
- Cases grew exponentially from March 2020 onward with a sharp acceleration mid-year
- Europe and South Asia were the most heavily affected regions outside North America

## Tools Used

- **Power BI Desktop** — dashboard building and visualization
- **Power Query** — data cleaning, type fixing, null removal
- **DAX** — custom measures for KPIs and death rate calculation

## DAX Measures

```dax
Total Cases = SUM(covid_data[Confirmed])

Total Deaths = SUM(covid_data[Deaths])

Total Recovered = SUM(covid_data[Recovered])

Death Rate = DIVIDE([Total Deaths], [Total Cases], 0) * 100
```

## Dataset

- **Source:** Kaggle — COVID-19 Dataset
- **Period:** 2020
- **Columns used:** Country, Date, Confirmed, Deaths, Recovered
