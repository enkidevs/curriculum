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

link: http://sqlfiddle.com/#!9/502b6a/1

answer: varchar

standards:
  sql.define-columns.0: 1000
  sql.define-columns.1: 1000
  sql.define-columns.2: 1000


links:
  - '[mysql modify columns documentation](https://dev.mysql.com/doc/refman/5.7/en/alter-table.html){website}'
  - '[blog post on mysql define tables](https://www.tutorialspoint.com/mysql/mysql-alter-command.htm){website}'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=Epj5cb5HF9o){video}'

---
# SQL Practice Aggregate Average

---        
## Exercise

Consider the `items` table. Here we didn't consider what happens when there will be more than 999 items (item_id = 'I999'). Modify `items` table such that it will behave normally and count further after reaching 999 elements.
In order to check your results, write the query for the relationship and `build schema` again. After that run the query provided and answer with the data type the result prints.
