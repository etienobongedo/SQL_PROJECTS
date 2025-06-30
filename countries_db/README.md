
# 🌍 Countries Database Project

Welcome to the **Countries Database Project**!  
This project is designed to demonstrate advanced SQL skills, particularly focusing on joining multiple tables to uncover meaningful insights about the world’s cities, countries, economies, and languages.

---

## 📚 Project Overview

> “Throughout this course, you'll be working with the countries database, which contains information about the most populous cities in the world, along with country-level economic, population, and geographic data. The database also contains information on languages spoken in each country.”

This project is built around a comprehensive countries database, perfect for practicing complex SQL joins and data analysis. You’ll use real-world data to answer questions about city populations, economic indicators, languages, and more.

---

## 🗂️ Database Structure

The database features the following tables:

- **currencies**: Data about each country’s official currency.
- **cities**: Details on major world cities, such as it's proper,	metroarea, and urbanarea populations.
- **languages**: Information on languages spoken in each country, including official and minority languages and the percentage of usage.
- **countries**: Core country data, including name, continent, region, form of government, etc.
- **economies**: Economic indicators for each country, such as GDP, income classification, unemployment rate, EXIM (Export-Import), etc.
- **populations**: Stores demographic data for each country, including year, fertility rate, life expectancy, and total population size.

---

## 🏆 Key Activities & Skills Demonstrated

- **SQL Joins:**  
  Practice inner, left, and multi-table joins to combine data across cities, countries, economies, and languages.

- **Insightful Queries:**  
  Answer real-world questions (e.g., "Which countries have the most populous cities by GDP per capita?" or "Which regions have the greatest language diversity?").

- **Data Aggregation:**  
  Use grouping and aggregate functions to summarize trends and patterns.

- **Data Presentation:**  
  Sort, filter, and present results in a clear and concise manner.

---

## 🚀 Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/countries-database.git
   ```

2. **Set up your PostgreSQL database:**
   - Install [PostgreSQL](https://www.postgresql.org/download/)
   - Create a new database:
     ```bash
     createdb countries_db
     ```
   - Load the schema and data:
     ```bash
     psql -d countries_db -f schema.sql
     psql -d countries_db -f data.sql
     ```

3. **Explore the sample queries:**  
   Open files in the `queries/` folder and experiment with joining and analyzing the tables.

---

## 🗃️ Example Query

```sql
-- List the top 10 most populous cities with their country, region, and GDP per capita
SELECT
  cities.name AS city,
  countries.name AS country,
  countries.region,
  economies.gdp_per_capita
FROM
  cities
JOIN countries ON cities.country_code = countries.code
JOIN economies ON countries.code = economies.country_code
ORDER BY
  cities.population DESC
LIMIT 10;
```

---

## 💡 Why This Project?

This project highlights:
- Advanced SQL query skills (especially joins)
- Practical data analysis on global datasets
- The ability to extract and visualize meaningful insights from complex, multi-table databases

---

## 📫 Contact

For questions, feedback, or collaboration, feel free to reach out on [LinkedIn](https://www.linkedin.com/in/etienobong-edo)! *(Tip: Ctrl + Click to open in a new tab)*

---

Happy querying!
