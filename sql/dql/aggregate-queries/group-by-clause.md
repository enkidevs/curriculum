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
  sql.aggregate-single-table.3: 10

tags:

  - workout


links:

  - '[More on GROUP BY](https://www.techonthenet.com/sql/group_by.php){documentation}'

parent: order-by-clause

aspects:
  - workout


---

# Group By clause

---
## Content

The `GROUP BY` clause is often used with aggregate functions (e.g. `SUM`, `AVG`). Syntactically it comes after the `WHERE` clause and before the `ORDER BY` in the *query*. It enables users to group data by one or more columns.

In our Pokemon db, we have a table called *move_name* with the following cloumns:
- id - unique move name id
- language_id - id of the language name is spelled in
- move_id
- name - how each move is called in each language
`GROUP BY` will help us count how many move_names are there for each langauge:

```
SELECT COUNT(name), language_id
FROM move_name
GROUP BY language_id;

--Result:
count | language_id
======+============
  639 |           6
  639 |           5
  639 |           8
  639 |           1
  639 |           9
  617 |           3
  639 |           7
(7 rows)

```

---
## Practice

We have a table called pokemon. Two of its fields are:  
`is_default` - it can be either true or false  
`name`  

We want to know how many pokemon are (not) default:
```
SELECT ???(name),???
FROM pokemon
??? is_default;

--Result:
count | is_default
======+============
   90 | f
  721 | t
(2 rows)
```


* COUNT
* is_default
* GROUP BY
* AVG
* SUM
* name

---
## Revision

In our pokemon db item is a table with the following columns:  
`id` - unique id of the item  
`cost` - item's cost  
`fling_power` - "Dark type move"[1]  
`item_category_id`  
`item_fling_effect_id`  
`name` - item's name  

We would like to get the average cost of each item category.

```
SELECT ???(cost),item_category_id
FROM ???
??? item_category_id
ORDER BY item_category_id;

--Result:
avg      | item_category_id
=========+==================
550      |        1
20       |        2
20       |        3
12       |        4
20       |        5
20       |        6
18.88    |        7
20       |        8
134.28   |        9
1810     |        10

...

```


* AVG
* item
* GROUP BY
* SUM
* ORDER BY
* GROUP
 
 
