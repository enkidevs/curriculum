---
author: mihaiberq

levels:

  - beginner

  - basic

  - medium

  - advanced

type: normal

category: must-know

inAlgoPool: false

tags:

  - workout

  - deep




---
## Content
# UNION

The **union** of two or more tables means combining their **type-matching rows**. Unlike the `JOIN` operation, which combines columns (containing all entries from either the left, the right or both tables), the `UNION` operation always retrieves every entry in *both tables*.

However, there are two necessary conditions for a `UNION` to be performed:
    - each union query must have the same number of columns
    - every *nth* column must have the same type in all union queries

For example, the following union will fail:
```SQL
SELECT *
FROM language
UNION
SELECT *
FROM language_name;
/* ERROR:  each UNION query must have
 the same number of columns
 LINE 4: SELECT *  */

```
As well as the next one:
```SQL
SELECT id, name
FROM language
UNION
SELECT id, language_id
from language_name;
/* ERROR:  UNION types text and bigint
 cannot be matched
 LINE 4: SELECT id, language_id   */
```
Changing `language_id` to `name` fixes the errors:
```SQL
SELECT id, name
FROM language
UNION
SELECT id, name
from language_name;
```
With the output:
```
id |       name       
===+============
16 | Chinese
35 | Englisch
 2 | roomaji
29 | 伊語
9  | en
26 | Espagnol

(51 rows)
```

### UNION ALL

By default, `UNION` returns only **distinct** values. If you need all occurrences of the items, use `UNION ALL`. In the above example, the tables won't contain any duplicates: if we were to change the last query to include the `ALL` keyword, the number of total rows will stay the same:
```SQL
SELECT id, name
FROM language
UNION ALL
SELECT id, name
from language_name;
```
And the output:
```
id  |       name       
====+============
  1 | ja
  2 | roomaji
  3 | ko
  4 | zh
  5 | fr
  6 | de
  7 | es
  8 | it
  9 | en
(51 rows)
```

For tables where data singularity is not always the case, the results might be different. An immediate consequence of this is that `UNION` performs worse, as it must scan the result for duplicates.

---
## Practice

Retrieve the `UNION` of the `region` and `region_name` tables:

```SQL
SELECT name
??? region
???
SELECT ???
FROM ???
WHERE region_name.region_id = 2;
```


* `FROM`
* `UNION`
* `name`
* `region_name`
* `ON`
* `OUTER JOIN`
* `*`

---
## Revision

??? command retrieves all rows, `even duplicated`, of the union.


* `UNION ALL`
* `UNION`
* `JOIN`
* `SELECT`

---
## Quiz
### Can you use a UNION of SELECTs?
```

Given the tables called `item_pocket` and `item_category`:

id |   name
```

 ???


