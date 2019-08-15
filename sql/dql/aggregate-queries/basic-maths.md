---
author: kapnobatai136

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


links:



aspects:
  - workout

---

# Basic Arithmetic Operations

---
## Content

In SQL you can use basic arithmetic operations to combine the values in your columns, row by row. Apart from the operations you already know (`+`, `-`, `*`, `/`) you can also use the modulo operator (`%`) which returns the remainder after division of the values.

Consider this simple table called `pokemon_stats` which has the following values:

| id | hp | attack | defense |
|----|----|--------|---------|
| 1  | 70 | 62     | 67      |
| 2  | 45 | 50     | 55      |
| 3  | 90 | 95     | 95      |
| 4  | 50 | 60     | 95      |
| 5  | 90 | 55     | 75      |

Let's say that in a query you also want to present a new column called `total`, which is the sum of the `hp`, `attack`, and `defense`. The syntax for this query would be:

```sql
SELECT id, hp, attack, defense,
    hp + attack + defense AS 'total'
FROM pokemon_stats;
```

*Result*:

| id | hp | attack | defense | total |
|----|----|--------|---------|-------|
| 1  | 70 | 62     | 67      | 199   |
| 2  | 45 | 50     | 55      | 150   |
| 3  | 90 | 95     | 95      | 280   |
| 4  | 50 | 60     | 95      | 205   |
| 5  | 90 | 55     | 75      | 220   |

Keep in mind that the new column `total` exists only for the duration or the purpose of the query, and that it will not modify the database.

If for some reason you want a table which contains the ratio between `hp` and `attack` as a percentage you would use:

```sql
SELECT id, hp, attack, defense,
    (hp / attack) * 100
FROM pokemon_stats;
```

*Results*:

| id | hp | attack | defense | hp / attack * 100 |
|----|----|--------|---------|-------------------|
| 1  | 70 | 62     | 67      | 112.9032          |
| 2  | 45 | 50     | 55      | 90                |
| 3  | 90 | 95     | 95      | 94.7368           |
| 4  | 50 | 60     | 95      | 83.333            |
| 5  | 90 | 55     | 75      | 163.6364          |

Because no *alias* was defined for the new column, it will take the name of the function. For this reason, it is recommended to use aliases as some production functions can get quite complicated and reduce readability.

As you might've already noticed, parentheses can be used to decide the order of the operations. If no parentheses are used, basic arithmetic rules apply:

- `*`, `/`, and `%` are calculated first, in the order they are used
- `+` and `-` come after, in the order they are used

One important factor which was mentioned in the beginning of the insight is that these operations are executed row by row. In the following insights we will talk about how you can aggregated values for entire columns. 

---
## Practice

Write a query that returns the ratio between `domestic_sales` and `international_sales` multiplied by 100:

```sql
??? id, ??? ??? international_sales ??? 100
FROM subsidiaries;
```

* SELECT
* domestic_sales
* /
* \*
* \
* %
