# Lab 1 Learning Notes

## Environment Setup
- Successfully installed WSL2 on Windows / Used native terminal on Linux
- PostgreSQL 15 running smoothly
- DBeaver connected on first try after setting correct host, port, and database

## Key Learnings

### Technical Skills
1. **PostgreSQL Installation:** Learned how to install and configure PostgreSQL 15, start/stop the server, and connect to it via terminal and DBeaver.
2. **SQL Basics:** Learned SELECT queries, ORDER BY, LIMIT, GROUP BY, HAVING, and simple aggregate functions (COUNT, AVG). Practiced filtering with WHERE and extracting parts of dates using EXTRACT().
3. **Git Workflow:** Learned how `git add` stages files, `git commit` saves snapshots, and `git push` uploads commits to a remote repository. Learned to check `git status` to see untracked/modified files.

### Challenges Faced
1. **Challenge:** Filtering books by a year using `EXTRACT(YEAR FROM date_finished)` returned 0 rows.
   - **Solution:** Checked actual years in data using `SELECT title, date_finished FROM books_read;` and removed the filter or updated the year to match data.
   - **Lesson:** Always verify data values before applying filters; understanding what your data actually contains prevents empty results.
2. **Challenge:** Git error “could not open directory 'lab1/lab1/'”.
   - **Solution:** Realized I was already inside `lab1`; used `git add .` instead of `git add lab1/`.
   - **Lesson:** Git commands depend on the current working directory. Adding files from the correct location is crucial.

## AI Usage Reflection
- Used AI 3–4 times for SQL query guidance and learning step-by-step explanations.
- Most helpful: Learning how ROW_NUMBER(), CTEs, and DATE_TRUNC() work for reading streak queries.
- Least helpful: The first suggestion to filter by year 2026 without checking sample data (returned empty result).
- Verification method: Predicted query results before running them, then ran queries in DBeaver/psql and checked that outputs matched expectations.

## Next Steps
- Explore more SQL functions (e.g., window functions, joins, subqueries).
- Practice Git branching and merging.
- Learn about database indexes and how they improve query performance.
