---
author: SebaRaba

levels:
  - beginner
  - basic
  - medium

tags:
  - workout
  - deep

type: exercise

linkType: sqlfiddle

link: http://sqlfiddle.com/#!9/ae6640/1

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

We've added a new feature, now we need you to update the database.  
We've allowed users to use their twitter ID as well as their facebook ID.  
However, we only allow them to use facebook OR twitter, not both. For reasons.   
Change the name of the `facebook_id` column to reflect that you can use either ID, change the name to `social_id`.
We'll also need a new column that indicates whether they used facebook or twitter.  
Create a new column called `social_type`, and set all the values to `facebook`.  
Ensure that any new rows that are created default to `facebook`.  

This query should work properly when you've completed your task.

```
SELECT COUNT(social_type) FROM users
GROUP BY social_type;
```
