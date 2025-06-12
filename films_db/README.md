# 🎬 Films Database Project

Welcome to the **Films Database** project!  
This repository showcases my hands-on journey with SQL—demonstrating how to filter, compare, summarize, and analyze data using a sample films database.

---

## 📚 Project Overview

> “Using a films database, you'll learn how to filter, compare, and summarize data with SQL. You'll also get a taste of aggregate functions, sorting, grouping, and how to present data neatly. Accompanied at every step with hands-on practice queries, this course teaches you everything you need to know to analyze data using your own SQL code today!”

This project is built around a sample database of films and is designed to highlight practical SQL data analysis skills.  
You’ll find  queries covering core SQL concepts, each illustrated with real-world examples from the films database.

---

## 🗂️ What's Inside

- **schema.sql** – SQL statements for creating the films database tables and relationships.
- **data.sql** – Sample data to populate the database.
- **queries.sql** – Practice SQL queries for filtering, comparing, summarizing, grouping, and sorting film data.
- **README.md** – You’re here!
- **diagrams.md** – ER diagrams and visual representations of the database schema.

---

## 🏆 Key Activities & Skills Demonstrated

- **Filtering Data:**  
  Retrieve films based on title, release year, gross, language, and other criteria.

- **Comparing Records:**  
  Use WHERE clauses, logical operators, and subqueries to compare films and actors/directors or reviews.

- **Summarizing Data:**  
  Leverage aggregate functions like COUNT, SUM, AVG, MIN, and MAX for insights (e.g., highest-grossing films, average ratings).

- **Sorting & Grouping:**  
  ORDER BY and GROUP BY clauses to organize and present results meaningfully.

- **Presenting Results:**  
  Formatting query output for clear and concise data presentation.

- **Hands-On Practice:**  
  Each concept is illustrated with practical, ready-to-run SQL queries.

---

## 🚀 Getting Started

1. **Clone the repository:**
   ```bash
   git clone https://github.com/your-username/films-database.git
   ```

2. **Set up your PostgreSQL database:**
   - Install [PostgreSQL](https://www.postgresql.org/download/).
   - Create a new database:
     ```bash
     createdb films_db
     ```
   - Load the schema and data:
     ```bash
     psql -d films_db -f schema.sql
     psql -d films_db -f data.sql
     ```

3. **Run and explore the sample queries:**
   - Open files in the `queries/` folder and execute them in your SQL client or `psql`.

---

## 🗃️ Example Query

```sql
-- Find top 5 highest-grossed films released after 2015
SELECT title, release_year, gross
FROM films
WHERE release_year > 2015
ORDER BY gross DESC
LIMIT 5;
```

---

## 📝 Why This Project?

This project demonstrates:
- Real-world data analysis with SQL
- Clean, reusable SQL code
- A showcase of data querying, aggregation, and reporting—valuable skills for any data-related role

---

## 📫 Contact

For feedback, suggestions, or collaboration, feel free to reach out via [LinkedIn](https://www.linkedin.com/in/etienobong-edo/)! *(Tip: Ctrl+Click to open in a new tab)*

---

Happy querying!
