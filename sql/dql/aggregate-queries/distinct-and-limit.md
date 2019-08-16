---
author: SebaRaba

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.aggregate-single-table.0: 10

tags:

  - workout


links:

  - '[More on DISTINCT](https://www.tutorialspoint.com/sql/sql-distinct-keyword.htm){documentation}'
  - '[FETCH FIRST Clause Implementations](https://en.wikipedia.org/wiki/Select_(SQL)#FETCH_FIRST_clause){documentation}'


aspects:
  - workout


---

# Distinct and Limit

---
## Content

The `DISTINCT` keyword enables users to filter the duplicates that appear after doing a `SELECT` query.

Consider the following table of `pokemons`:

| name      | level |
|-----------|-------|
| Weedle    | 1     |
| Caterpie  | 3     |
| Bulbasaur | 5     |
| Charizard | 45    |
| Bulbasaur | 47    |
| Caterpie  | 65    |
| Charizard | 100   |

If you wanted to return a list of all the *unique* names you'd use:

```sql
SELECT DISTINCT name FROM pokemons;
```

*Results*:

| name      |
|-----------|
| Weedle    |
| Caterpie  |
| Bulbasaur |
| Charizard |

There might be some cases where you only want to return a certain number of results, or records that start after a certain number of rows. In this case you'd have to use the `OFFSET <number> ROWS` and the `FETCH FIRST <number> ROWS ONLY` commands.

Using the same table, if we wanted to limit our results to 3 records and start counting after the second row we'd use:

```sql
SELECT * FROM pokemons
OFFSET 2 ROWS
FETCH FIRST 3 ROWS ONLY
```

*Results*:

| name      | level |
|-----------|-------|
| Bulbasaur | 5     |
| Charizard | 45    |
| Bulbasaur | 47    |


It's important to note that the `OFFSET <number> ROWS` and `FETCH FIRST <number> ROWS ONLY` clauses represent the ANSI Standard for *limiting* or *skipping* a certain number of rows, but that does not mean that all RDBMS implementations will use the same wording. One of the most popular implementations consists of using `LIMIT <number> OFFSET <number>`, and here is how you would apply it:

```sql
SELECT * FROM pokemons
LIMIT 3 OFFSET 2;
```

Check out the resource links if you're unsure of what syntax your implementation uses.

---
## Practice

What is the ANSI Standard syntax for limiting your resulting set to a certain number of rows?

???

* `FETCH FIRST <number> ROWS ONLY`
* `LIMIT <number>`
* `FIRST <number>`

---
## Revision

Look at the following table and query. Fill the gaps so that we end up with no duplicates in the resulting `GRADES` table:

| NAME      | GRADES |
|-----------|--------|
| John      | 56%    |
| Sebastian | 68%    |
| Doris     | 56%    |
| Alice     | 88%    |
| Stefan    | 68%    |
| Raul      | 50%    |

```sql
SELECT ???
FROM ???
??? BY GRADES;
```


* `DISTINCT name`
* `GRADES`
* `ORDER`
* `EMPLOYEES`
* `*`
