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

link: http://sqlfiddle.com/#!9/46e122/1

standards:
  sql.define-relationships.2: 1000
  sql.define-columns.2: 1000

links:
  - '[MySQL create foreign keys](https://dev.mysql.com/doc/refman/5.7/en/create-table-foreign-keys.html){documentation}'
  - '[explainer on foreign keys](https://www.w3schools.com/sql/sql_foreignkey.asp){website}'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=GU_zYgXXOzE){video}'

aspects:
  - introduction
  - workout
  - deep


---

# SQL Practice Define Relationships

---        
## Exercise

Create a foreign key reference to the table `user_reports`, relating `user_id` on `user_reports` to `id` on `users`. Add additional constraints to ensure that there is only _one_ report for each user.
When you are finished, run this query and check that it *fails*:  
`INSERT INTO user_reports (id, user_id, total_items, max_daily_price) VALUES (110, 99, 58, 900);`
 
 
