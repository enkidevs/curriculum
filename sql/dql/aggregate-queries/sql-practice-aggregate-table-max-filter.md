---
author: SebaRaba

levels:
  - beginner
  - basic
  - medium

tags:
  - introduction
  - workout
  - deep

type: exercise

linkType: sqlfiddle

link: http://sqlfiddle.com/#!9/58d6e/40

standards:
  sql.aggregate-single-table.1: 1000

links:
  - '[mysql aggregate queries documentation](https://dev.mysql.com/doc/refman/5.7/en/group-by-functions.html){website}'
  - '[blog post on mysql aggregate functions](https://www.guru99.com/aggregate-functions.html){website}'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=sgAvl7ry5jY){video}'

---
# SQL Practice Aggregate Table Max Filter

---        
## Exercise

Write a query that finds maximum `cost` for each `fling_effect` group, only if the `fling_power` is smaller than `25`.
