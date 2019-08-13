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


aspects:
  - workout


---

# Distinct clause

---
## Content

The `DISTINCT` keyword enables users to filter the duplicates that result after doing a `SELECT` query.

Consider the following table of `pokemons`:

| name      | level |
|-----------|-------|
| bulbasaur | 5     |
| charizard | 50    |
| bulbasaur | 45    |

If you wanted to return a list of all the *unique* names you would use:

```sql
SELECT DISTINCT name FROM pokemons;
```

*Results*:

| name      |
|-----------|
| bulbasaur |
| charizard |

There might be some cases where you only want to return a certain number of results, or records after a certain number of rows. In this case you would have to use the `OFFSET <number> ROWS` and the `FETCH FIRST <number> ROWS ONLY` commands.

Using the same table, if we wanted to limit our results to 1 record and start counting after the first row we would use:

```sql
SELECT * FROM pokemons
OFFSET 1 ROWS
FETCH FIRST 1 ROWS ONLY
```

*Results*:

| name      | level |
|-----------|-------|
| charizard | 50    |

---
## Practice

We know that the table *pokedex_name* has a field called name with 42 entries. We would like to see how many of these are distinct values. Which query do you think will have the desired output?
```
SELECT COUNT(name) FROM pokedex_name;

--Result:
count
======
   42
(1 row)

???

--Result:
count
======
   35
(1 row)
```


* SELECT COUNT(DISTINCT name) FROM pokedex_name;
* SELECT * FROM pokedex_name;
* SELECT DISTINCT COUNT(name) FROM pokedex_name;
* DISTINCT SELECT COUNT(name) FROM pokedex_name;

---
## Revision

Consider the following table and the following query. Fill the gaps such that we will have no duplicates in the resulting table:
```
--GRADES table:

|   NAME    | GRADES |
|===========|========|
| John      | 56%    |
| Sebastian | 68%    |
| Doris     | 56%    |
| Alice     | 88%    |
| Stefan    | 68%    |
| Raul      | 50%    |

SELECT ???
FROM ???
??? BY GRADES;
```


* `DISTINCT name`
* `GRADES`
* `ORDER`
* `EMPLOYEES`
* `*`
 
 
