# Steam Games Data Analysis Project

## Project Overview

This project is an in-depth data analysis of Steam games, focusing on key insights such as pricing patterns, genre distributions, publisher insights, and trends in game releases. The goal was to clean and analyze the data, uncover significant trends, and visualize the results to make sense of the vast dataset. The project uses various Python libraries like pandas, seaborn, matplotlib, `re` for regular expressions, and `collections.Counter` to process, visualize, and extract meaningful patterns from the data.

## Key Insights Explored

1. **Price Distribution and Analysis**  
   The first step involved understanding the pricing patterns of Steam games, including visualizing the distribution of original and discounted prices using histograms. We identified the most expensive games and trends in discount pricing.

2. **Top 10 Games by Price**  
   We extracted the top 10 games based on their original price and analyzed how their prices relate to their genres, publishers, and other factors.

3. **Most Common Genres and Publishers**  
   By cleaning and processing the genre and publisher data, we identified the most common genres and top publishers on Steam, showing the distribution and market dominance.

4. **Discount Trends**  
   We explored the relationship between game genres and discount prices. By calculating the average discount per genre, we visualized the genres that typically receive the highest discounts, offering insights into pricing strategies.

5. **Game Release Trends Over Time**  
   Analyzing the release dates of games, we looked at the evolution of game releases over the years. We explored how certain genres grew in popularity over time and the year-wise release patterns, identifying trends in the gaming market from 2006 to 2019.

6. **Correlation Between Key Variables**  
   A heatmap was used to analyze the correlation between key variables like original price, discount price, and achievements. This helped in understanding how these factors are related and how they influence each other.

## Technologies and Libraries Used

- **Pandas**: For data manipulation and cleaning.
- **Matplotlib**: For basic visualizations and plotting.
- **Seaborn**: For creating advanced and aesthetic plots like bar charts, heatmaps, and histograms.
- **re**: The `re` library was used for handling regular expressions to clean and process the game descriptions and other text fields.
- **collections.Counter**: The `Counter` class was used to count and analyze the most common words and occurrences in the game descriptions, providing insights into the linguistic patterns.

## Project Workflow

1. **Data Cleaning**: 
   - Initial dataset cleaning was performed to handle missing values, standardize text columns, and convert columns to appropriate data types.
   - The dataset was further cleaned by exploding the multi-valued genre column to facilitate genre-based analysis.
   
2. **Exploratory Data Analysis (EDA)**: 
   - The core focus of the project was EDA. We created various visualizations to explore trends in pricing, genre distributions, publisher dominance, and game releases over time.

3. **Visualization and Insights**: 
   - After cleaning and processing the data, we created meaningful plots (bar plots, histograms, word clouds, and heatmaps) to uncover valuable insights.
   
4. **Conclusion and Analysis**: 
   - The project provided insights into which genres received the highest discounts, the release trends over the years, and how publishers and genres evolve over time.

## Conclusion

The analysis revealed that certain genres like **Indie** and **Action** dominate in the Steam marketplace. Additionally, it was observed that game releases peaked around **2016-2017**, with a slow decline in subsequent years. The analysis also highlighted how pricing strategies differ across genres, with some genres offering higher discounts than others. This project offers a clear picture of the gaming market's dynamics, providing valuable insights into pricing, releases, and marketing strategies.

## Future Enhancements

This analysis can be expanded by:
- Incorporating additional features like user reviews, ratings, or gameplay details for deeper insights.
- Performing sentiment analysis on game descriptions and reviews to analyze how they affect sales.
- Implementing machine learning models to predict the success of a game based on its genre, pricing, and other factors.

## Notes

The logic and analysis for this project were entirely created by the user. AI tools and chatbots were only used to assist with code cleaning and structuring the implementation for better readability and optimization.

