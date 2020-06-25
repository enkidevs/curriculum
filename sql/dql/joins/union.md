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

standards:
  sql.read-multiple-tables.0: 10

tags:

  - workout

  - deep

aspects:
  - workout
  - deep


---

# UNION

---
## Content

The **union** of two or more tables means combining their **type-matching rows**. Unlike the `JOIN` operation, which combines columns (containing all entries from either the left, the right or both tables), the `UNION` operation always retrieves every entry in *both tables*.

However, there are two necessary conditions for a `UNION` to be performed:
  - each union query must have the same number of columns
  - every *nth* column must have the same type in all union queries

For example, the following union will fail:
```sql
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
```sql
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
```sql
SELECT id, name
FROM language
UNION
SELECT id, name
from language_name;
```

With the output:

| id | name     |
|----|----------|
| 16 | Chinese  |
| 35 | Englisch |
| 2  | roomaji  |
| 29 | 伊語     |
| 9  | en       |
| 26 | Espagnol |

### UNION ALL

By default, `UNION` returns only **distinct** values. If you need all occurrences of the items, use `UNION ALL`. In the above example, the tables won't contain any duplicates: if we were to change the last query to include the `ALL` keyword, the number of total rows will stay the same:
```sql
SELECT id, name
FROM language
UNION ALL
SELECT id, name
from language_name;
```

And the output:

| id | name    |
|----|---------|
| 1  | ja      |
| 2  | roomaji |
| 3  | ko      |
| 4  | zh      |
| 5  | fr      |
| 6  | de      |
| 7  | es      |
| 8  | it      |
| 9  | en      |

For tables where data singularity is not always the case, the results might be different. An immediate consequence of this is that `UNION` performs worse, as it must scan the result for duplicates.

---
## Practice

Retrieve the `UNION` of the `region` and `region_name` tables:

```sql
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

??? command retrieves all rows, _even duplicated_, of the union.

* `UNION ALL`
* `UNION`
* `FULL JOIN`
* `SELECT UNION`

---
## Quiz 
### Can you use a UNION of SELECTs?
Given the tables called `item_pocket` and `item_category`:

```

id |   name    
===|===========
 1 | misc
 2 | medicine
 3 | pokeballs
(...)

id   | item_pocket_id |    name       
=====|================|=============
   1 |              7 | stat-boosts
   2 |              5 | effort-drop
   3 |              5 | medicine
   4 |              5 | other
   5 |              5 | in-a-pinch
(...)

```


Retrieve `item_category`s' id and names together with `item_pocket`s' names without duplicates.
The result should look like this:

```

  id   | pocket_name |   name       
=======|=============|===============
     1 | battle      | stat-boosts
     2 | berries     | effort-drop
     3 | misc        | medicine
```

 ???

* SELECT item_category.id, item_pocket.name AS pocket_name, item_category.name FROM item_category RIGHT JOIN item_pocket ON item_pocket.id = item_category.item_pocket_id UNION SELECT item_category.id, item_pocket.name AS pocket_name, item_category.name FROM item_category LEFT JOIN item_pocket ON item_pocket.id = item_category.item_pocket_id;
* SELECT item_category.id, item_pocket.name AS pocket_name, item_category.name FROM item_category FULL JOIN item_pocket ON item_pocket.id = item_category.item_pocket_id UNION ALL SELECT item_category.id, item_pocket.name AS pocket_name, item_category.name FROM item_category RIGHT JOIN item_pocket ON item_pocket.id = item_category.item_pocket_id;
* SELECT item_category.id, item_pocket.name AS pocket_name, item_category.name FROM item_category RIGHT JOIN item_pocket ON item_pocket.name = item_category.name UNION SELECT item_category.id, item_pocket.name AS pocket_name, item_category.name FROM item_category RIGHT JOIN item_pocket ON item_pocket.name = item_category.name;
* SELECT item_category.id, item_pocket.name AS pocket_name, item_category.name FROM item_category RIGHT JOIN item_pocket ON item_pocket.id = item_category.item_pocket_id UNION SELECT item_category.id FROM item_category RIGHT JOIN item_pocket ON item_pocket.id = item_category.item_pocket_id;
 
 
