---
author: SebaRaba
type: normal
category: must-know
tags:
  - workout
links:
  - >-
    [More on GROUP
    BY](https://www.techonthenet.com/sql/group_by.php){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Group By clause

---

## Content

The `GROUP BY` clause is often used with aggregate functions (e.g. `SUM`, `AVG`). Syntactically it comes after the `WHERE` clause and before the `ORDER BY` in the _query_. It enables users to group data by one or more columns.

In our Pokemon db, we have a table called `move_name` with the following columns:

- `id` - unique move name id
- `language_id` - id of the language name is spelled in
- `move_id`
- `name` - how each move is called in each language

`GROUP BY` will help us count how many `move_names` there are for each language:

```sql
SELECT COUNT(name), language_id
FROM move_name
GROUP BY language_id;
```

Output:

| count | language_id |
| ----- | ----------- |
| 639   | 6           |
| 639   | 5           |
| 639   | 8           |
| 639   | 1           |
| 639   | 9           |
| 617   | 3           |
| 639   | 7           |

---

## Practice

We have a table called `pokemon`. In this table there are two fields:

1. `is_default` - Boolean
2. `name` - String (name of the pokemon)

We want to count how many pokemon are **not** default. Fill in the blanks to complete this query:

```sql
SELECT 
  ???(name),
  ???
FROM
  pokemon
???
  is_default;
```

Output:

| count | is_default |
| ----- | ---------- |
| 90    | f          |
| 721   | t          |

- COUNT
- is_default
- GROUP BY
- AVG
- SUM
- name

---

## Revision

`item` is a table with the following columns:
`id` - unique id of the item
`cost` - item's cost
`item_category_id` - ID category
`name` - item's name

Find the _average cost of items in each category_.

```sql
SELECT
  ???(cost),
  item_category_id
FROM
  ???
???
  item_category_id
ORDER BY
  item_category_id;
```

Output:

| avg    | item_category_id |
| ------ | ---------------- |
| 550    | 1                |
| 20     | 2                |
| 20     | 3                |
| 12     | 4                |
| 20     | 5                |
| 20     | 6                |
| 18.88  | 7                |
| 20     | 8                |
| 134.28 | 9                |
| 1810   | 10               |
| ...    | ...              |

- AVG
- item
- GROUP BY
- SUM
- ORDER BY
- GROUP
