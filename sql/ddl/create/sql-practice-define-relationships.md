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

link: http://sqlfiddle.com/#!9/3c80fe

standards:
  sql.define-relationships.1: 1000


links:
  - '[mysql create foreign keys](https://dev.mysql.com/doc/refman/5.7/en/create-table-foreign-keys.html){website}'
  - '[explainer on foreign keys](https://www.w3schools.com/sql/sql_foreignkey.asp){website}'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=zhk-q4EvV2o){video}'

---

# SQL Practice Create Relationships

---        
## Exercise

Add a Foreign Key constraint to the `user_items` and `requests` tables.
Once you're finished with that, add this insert statement to the end, and check that it **fails**:    
`INSERT INTO user_items (id, item_id, user_id, daily_price) VALUES (4, 10, 11, 5.2);`
