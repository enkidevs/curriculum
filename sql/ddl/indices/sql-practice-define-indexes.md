---
author: SebaRaba
tags:
  - introduction
  - workout
  - deep
type: exercise
linkType: sqlfiddle
link: 'http://sqlfiddle.com/#!9/53a66c/1'
answer: facebook_id
links:
  - >-
    [MySQL modify columns
    documentation](https://dev.mysql.com/doc/refman/5.7/en/create-index.html){documentation}
  - >-
    [blog post on MySQL define
    tables](https://atech.blog/viaduct/mysql-indexes-primer){website}
  - >-
    [video tutorial on creating
    indexes](https://youtu.be/19eLh1ZdoLY?t=56s){video}
  - >-
    [video tutorial on the differences between clustered and non-clustered
    index](https://www.youtube.com/watch?v=ITcOiLSfVJQ){video}
---

# SQL Practice Define Indexes


---

## Exercise

Our `users` table has grown so large that lookups based on `facebook_id` take forever! We need to add an index.
Add an index to the `facebook_id` column.

Run the query before you create an index, and click "View Execution Plan", then run the query after you create the index, and *click "View Execution Plan"*.

Check the `possible_keys` column - what is the value that appears there?
 
