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

link: http://sqlfiddle.com/#!9/ddb15b

standards:
  sql.define-relationships.3: 1000


links:
  - '[MySQL create foreign keys](https://dev.mysql.com/doc/refman/5.7/en/create-table-foreign-keys.html){website}'
  - '[explainer on foreign keys](https://www.w3schools.com/sql/sql_foreignkey.asp){website}'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=GU_zYgXXOzE){video}'

---
# SQL Practice Define Relationships

---        
## Exercise

Create a foreign key reference to relate the `users` table to itself. Ensure that the `manager` column only contains references to the `id` field within `users`.
When you are finished, run this query and check that it *fails*:  
`UPDATE users SET manager = 46`
