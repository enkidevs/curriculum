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

link: http://sqlfiddle.com/#!9/9eecb/23059

answer: BTREE

standards:
  sql.define-indices.0: 1000
  sql.define-indices.1: 1000
  sql.define-indices.2: 1000
  sql.define-indices.3: 1000


links:
  - '[mysql modify columns documentation](https://dev.mysql.com/doc/refman/5.7/en/create-index.html){website}'
  - '[blog post on mysql define tables](https://atech.blog/viaduct/mysql-indexes-primer){website}'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=JjNef3tPltU){video}'

---
# SQL Practice Aggregate Average

---        
## Exercise

Consider the `items` table we defined. There is an important thing we didn't cover for this table. We didn't set a primary key constraint ( also known as one of the two types of indexes ). Create on for this table.

In order to check your results:
- add the index,
- build the schema,
- run the provided query,
- and provide the `Index_type` displayed in the result in the answer field.
