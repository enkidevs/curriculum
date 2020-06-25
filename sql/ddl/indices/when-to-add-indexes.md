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
  sql.define-indices.0: 10
  sql.define-indices.3: 10

tags:

  - workout

  - deep

links:
  - "[SQLMag Do's and Don'ts of indices](http://www.itprotoday.com/microsoft-sql-server/indexing-dos-and-don-ts){website}"


aspects:
  - workout
  - deep


---

# When to add Indices

---
## Content

Indices[1] are meant to help SQL Servers to lookup data *faster*. However we need to pay attention at how often the data will be inserted, updated and deleted. That is because each time we modify data in an indexed table, the index needs to be updated as well. This can lead to *lower performance* in the end.

Thus, we should bear in mind the followings while creating Indices:
- for tables that have frequent writes, use as few columns as possible under the same index
- if the table contains a lot of data, but the data isn't modified that frequently, use as many Indices to improve performance
- try to select columns with very little data in clustered indices, large columns like `text` cause performance issues
- the more duplicates we have in a column, the lower the performance of the index
- If we use more columns in a single index, the order is important because the table will be primarily sorted by the first index, and secondarily sorted by the second index, and so on
- indexing columns is most important when working with exact-match queries

---
## Practice

Consider the following table. We want to create a non-clustered index on the `experience` column:

| id | level | experience | growth_rate_id |
|----|-------|------------|----------------|
| 1  | 1     | 0          | 1              |
| 2  | 2     | 10         | 1              |
| 3  | 3     | 33         | 1              |
| 4  | 4     | 80         | 1              |
| 5  | 5     | 156        | 1              |
| 6  | 6     | 270        | 1              |
| 7  | 7     | 428        | 1              |
| 8  | 8     | 640        | 1              |
| 9  | 9     | 911        | 1              |
| 10 | 10    | 1250       | 1              |
| 11 | 11    | 1663       | 1              |

```sql
??? INDEX exp_index
??? experience (???);
```

* CREATE
* ON
* experience
* UNIQUE
* INDEX
* level

---
## Revision

Consider the item table:

| id | cost | name        |
|----|------|-------------|
| 1  | 0    | master-ball |
| 2  | 1200 | ultra-ball  |
| 3  | 600  | great-ball  |
| 4  | 200  | poke-ball   |

???

Suppose that `PRIMARY KEY` isn't set yet. Choose the query that will create a clustered index on the `id` column.

* CREATE UNIQUE INDEX id_clustered ON item(id);
* CREATE UNIQUE INDEX id_clustered ON item(cost);
* CREATE INDEX id_clustered ON item(id);

---
## Quiz 
### Do you know how to match a pattern in SQL?

Consider the `pokemon` table from our pokemon database:

| id  | order | height | weight | base_experience | pokemon_species_id | name      |
|-----|-------|--------|--------|-----------------|--------------------|-----------|
| 1   | 1     | 7      | 69     | 64              | 1                  | bulbasaur |
| 2   | 2     | 10     | 130    | 142             | 2                  | ivysaur   |
| 3   | 3     | 20     | 1000   | 236             | 3                  | venusaur  |
| ... | ...   | ...    | ...    | ...             | ...                | ...       |

This table has thousands of entries and querying a pokemon's species is very slow. We need to speed up this common query. We want to create an index that will help us improve the efficiency of this data retrieval.

???

* CREATE INDEX species_to_pokemon ON pokemon(pokemon_species_id);
* CREATE UNIQUE INDEX species_to_pokemon ON pokemon(pokemon_species_id);
* CREATE UNIQUE INDEX species_to_pokemon ON pokemon(id);
* CREATE INDEX species_to_pokemon ON pokemon(weight);

---
## Footnotes
[1:Indices]
Reasonable people differ when they refer to the plural of Index. Some people use Indices, some use Indexes.
 
 
