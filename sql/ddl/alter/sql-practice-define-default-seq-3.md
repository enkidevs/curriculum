---
author: SebaRaba
tags:
  - introduction
  - workout
  - deep
type: exercise
linkType: sqlfiddle
link: 'http://sqlfiddle.com/#!9/3d4c1'
answer: 1
links:
  - >-
    [MySQL modify columns
    documentation](https://dev.mysql.com/doc/refman/5.7/en/example-auto-increment.html){documentation}
  - >-
    [blog post on MySQL define
    tables](https://www.tutorialspoint.com/mysql/mysql-using-sequences.htm){website}
  - >-
    [video tutorial on aggregate
    functions](https://www.youtube.com/watch?v=5KqFoTswr-M){video}
---

# SQL Practice Sequences


---

## Exercise

We want to create a new database for our products. We have a lot of products to import- around 10,000 of them. They all already have IDs from our old database, that start at 0. We'll have other associated data that references those IDs as well.

We won't have the data to import for a few weeks, but we know that we want to start adding new products to the database right away.
Start the auto-incrementing ID at 100,000, just in case there are more than we realized.
 
