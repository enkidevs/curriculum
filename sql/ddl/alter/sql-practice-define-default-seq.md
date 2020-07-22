---
author: SebaRaba
tags:
  - introduction
  - workout
  - deep
type: exercise
linkType: sqlfiddle
link: 'http://sqlfiddle.com/#!9/9ee8e9'
answer: 0
links:
  - >-
    [MySQL modify columns
    documentation](https://dev.mysql.com/doc/refman/5.7/en/example-auto-increment.html){documentation}
  - >-
    [blog post on MySQL define
    tables](https://www.tutorialspoint.com/mysql/mysql-using-sequences.htm){website}
  - >-
    [a reference on default
    values](https://www.w3schools.com/sql/sql_default.asp){website}
  - >-
    [video tutorial on aggregate
    functions](https://www.youtube.com/watch?v=5KqFoTswr-M){video}
---

# SQL Practice Aggregate Average


---

## Exercise

Our database has no default values in it! If someone messes up a query, things could get weird...
Fix all of the errors by creating defaults.

In order to do this properly, you will need to satisfy the following conditions:

- *ID fields should autoincrement*
- *The `email_verified` and `accepted` fields should default to `false`*
- *The `daily_price` field should default to `0`*

After that is done, the seed script should run properly.
 
