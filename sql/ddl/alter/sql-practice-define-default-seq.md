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

link: http://sqlfiddle.com/#!9/9ee8e9

answer: 0

standards:
  sql.define-sequences-or-default-values.0: 1000


links:
  - '[MySQL modify columns documentation](https://dev.mysql.com/doc/refman/5.7/en/example-auto-increment.html){documentation}'
  - '[blog post on MySQL define tables](https://www.tutorialspoint.com/mysql/mysql-using-sequences.htm){website}'
  - '[a reference on default values](https://www.w3schools.com/sql/sql_default.asp)'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=5KqFoTswr-M){video}'

---

# SQL Practice Aggregate Average

---
## Exercise

Our database has no sane defaults in it, so if someone messes up a query things could get weird.
Fix all of the errors by creating defaults, until the seed script runs properly.
If you'd like a hint as to what to do, scroll down...


#### Hint
- Set an auto increment on all of the ID fields
- Set a default of `false` on `email_verified` and `accepted`
- Set a default value of `0` on `daily_price`
