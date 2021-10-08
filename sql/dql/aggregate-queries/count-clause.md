---
author: SebaRaba
type: normal
category: must-know
tags:
  - workout
links:
  - >-
    [More on COUNT
    clause](https://docs.microsoft.com/en-us/sql/t-sql/functions/aggregate-functions-transact-sql){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# COUNT & LIMIT


---

## Content

You can use the `COUNT` clause to return the total number of entries in a given column.

Take this table of `customers` for example:

| customer   | orders |
|------------|--------|
| Anabella   | 4      |
| Obadias    | 87     |
| Dore       | 86     |
| Anthe      | 11     |
| Carol-jean | 21     |
| Mehetabel  | 68     |
| Arte       | 1      |
| Kandy      | 31     |
| Brunhilda  | 61     |
| Jolee      | 92     |

Let's say your boss wants you to find out how many customers are in total. You could count all of the manually, or you could use the `COUNT` clause:

```sql
SELECT
  COUNT(customer) AS count
FROM
  customers
```

| count |
| ----- |
| 10    |

Now, your boss wants you to find *the first five customers with the most orders*. To get this data, you'll need to use the `LIMIT` clause. 

```sql
SELECT
  customer
FROM
  customers
ORDER BY
  orders DESC
LIMIT 5
```

And the customers are:

| Customer  | Orders |
|-----------|--------|
| Jolee     | 92     |
| Obadias   | 87     |
| Dore      | 86     |
| Mehetabel | 68     |
| Brunhilda | 61     |

> 💡 You can use the `LIMIT` keyword in any query. you're not limited by the `ORDER BY` clause.

---

## Practice

We have a table `location`. It has data stating the region each location belongs to. How many locations are there in each region? Display the result ordered by regions.

| id  | region_id | name          |
| --- | --------- | ------------- |
| 1   | 4         | canalave-city |
| 2   | 4         | eterna-city   |
| 3   | 4         | pastoria-city |
| ... | ...       | ...           |

```sql
SELECT ???(name), ???
FROM location
??? region_id
ORDER BY region_id;
```

Output:

```md
| count | region_id |
| ----- | --------- |
| 90    | 1         |
| 64    | 2         |
| 82    | 3         |
| 126   | 4         |
| 121   | 5         |
| 104   | 6         |
```

- COUNT
- region_id
- GROUP BY
- ORDER BY
- SUM
- AVG


---

## Revision

Knowing that the pokemon db has a table called `item` and a field `name`, how do we count all name entries?

```sql
SELECT ???(???)
FROM item;
```

Output:

| count |
| ----- |
| 746   |

- COUNT
- name
- DISTINCT name
- item
- all
