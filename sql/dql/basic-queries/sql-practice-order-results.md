---
author: SebaRaba

levels:
  - beginner
  - basic

tags:
  - introduction
  - workout

type: exercise

linkType: sqlfiddle

link: http://sqlfiddle.com/#!9/b3fa3a/51

answer: /cherish-ball.*premier-ball/

standards:
  sql.read-single-table.0: 1000
  sql.read-single-table.1: 1000
  sql.read-single-table.3: 1000

links:
  - '[mysql ORDER BY documentation](https://dev.mysql.com/doc/refman/5.7/en/order-by-optimization.html){website}'
  - '[blog post tutorial on SELECT](http://www.dofactory.com/sql/select){website}'
  - '[video tutorial on mysql SELECT](https://www.youtube.com/watch?v=BgK88mlgA6I){video}'

---
# SQL Practice Order Results

---        
## Exercise

In SQLFiddle, write a SQL query that executes the following:

Return the `name` and `fling_power` all items that cost between 100 and 500, ordered by the `fling_power`.

In the answer field, write the name of the item with the smallest fling power and the name of the item with the greatest fling power within this range.
