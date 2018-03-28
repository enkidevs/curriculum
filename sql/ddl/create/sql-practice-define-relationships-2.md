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
  sql.define-relationships.0: 1000


links:
  - '[mysql modify columns documentation](https://dev.mysql.com/doc/refman/5.7/en/create-table-foreign-keys.html){website}'
  - '[blog post on mysql define tables](http://www.anchor.com.au/hosting/support/CreatingAQuickMySQLRelationalDatabase){website}'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=zhk-q4EvV2o){video}'

---

# SQL Practice Query Relationships

---        
## Exercise

Create a foreign key constraint to relate the `users` table with the `users_items` table, on the `user_id` column in `users_items`.
When you are finished, run this query and check that it **fails**:  
`INSERT INTO user_items (id, item_id, user_id, daily_price) VALUES (4, 10, 11, 5.2);`
