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

link: http://sqlfiddle.com/#!9/940e4

answer: db_9_3b626

standards:
  sql.define-relationships.3: 1000


links:
  - '[mysql modify columns documentation](https://dev.mysql.com/doc/refman/5.7/en/create-table-foreign-keys.html){website}'
  - '[blog post on mysql define tables](http://www.anchor.com.au/hosting/support/CreatingAQuickMySQLRelationalDatabase){website}'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=zhk-q4EvV2o){video}'

---
# SQL Practice Aggregate Average

---        
## Exercise

Create a table and define foreign key constraints such that we will have a many to many relationship between `items` and `requests` tables.
In order to check your results, write the query for the relationship and `build schema` again. After that run the query provided and answer with the value in `REFERENCED_TABLE_SCHEMA` column of the result.
