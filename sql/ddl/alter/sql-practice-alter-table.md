---
author: SebaRaba

levels:
  - beginner
  - basic
  - medium

tags:
  - introduction
  - workout

type: exercise

linkType: sqlfiddle

link: http://sqlfiddle.com/#!9/d5ccaa

standards:
  sql.define-columns.1: 1000
  sql.define-columns.2: 1000

links:
  - '[mysql modify columns documentation](https://dev.mysql.com/doc/refman/5.7/en/alter-table.html){website}'
  - '[blog post on mysql define tables](https://www.w3schools.com/sql/sql_alter.asp){website}'
  - '[video tutorial on alter table](https://youtu.be/vDr2DZeU5mY?t=50s){video}'

---

# SQL Practice Aggregate Average

---        
## Exercise

Follow the link to SQLFiddle and examine the `CREATE` statements in the lefthand window.

Consider the `item_pictures` table. It turns out the maxiumum length of the `URL` field is much too short to hold mosts urls.

Unfortunately, the schema is already in production, so re-creating the database is not an option.

Write a statement to modify the `item_pictures` table to adapt to the problem presented.  
Don't directly edit the `CREATE` statements; instead, write a new statement to alter (*hint*) the table.
  
To submit, run your SQL and then add the link from SQLFiddle to your submission.  
