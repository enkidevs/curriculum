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

link: http://sqlfiddle.com/#!9/ae6640/5

standards:
  sql.define-columns.0: 1000
  sql.define-columns.1: 1000
  sql.define-columns.2: 1000


links:
  - '[MySQL modify columns documentation](https://dev.mysql.com/doc/refman/5.7/en/alter-table.html){documentation}'
  - '[blog post on MySQL define tables](https://www.tutorialspoint.com/mysql/mysql-alter-command.htm){website}'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=Epj5cb5HF9o){video}'

aspects:
  - workout
  - deep


---

# SQL Practice Aggregate Average

---        
## Exercise

We've added a authentication method to our webapp! Now we need _you_ to update the database.
We've allowed users to use their Twitter ID instead of their Facebook ID to log on.
_However_, we only accept Facebook *OR* Twitter... Not both. For reasons.

First, update the name of the `facebook_id` column to reflect that you can use either ID. Change it to `social_id`.

Once that's done, we'll also need a new column that indicates whether they used Facebook or Twitter. Create a new column called `social_type` and set all current values to `facebook`.
Set the default value for this new column to be `facebook`. For reasons.
 
 
