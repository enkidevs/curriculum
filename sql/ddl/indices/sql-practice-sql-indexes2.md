---
author: SebaRaba
levels:
  - beginner
  - basic
  - medium
tags: []
type: exercise
linkType: sqlfiddle
link: 'http://sqlfiddle.com/#!9/ae6640'
answer: BTREE
standards:
  sql.define-indices.0: 1000
  sql.define-indices.1: 1000
  sql.define-indices.2: 1000
  sql.define-indices.3: 1000
links:
  - >-
    [MySQL modify columns
    documentation](https://dev.mysql.com/doc/refman/5.7/en/create-index.html){documentation}
  - >-
    [blog post on MySQL define
    tables](https://atech.blog/viaduct/mysql-indexes-primer){website}
  - >-
    [video tutorial on aggregate
    functions](https://www.youtube.com/watch?v=JjNef3tPltU){video}
aspects:
  - introduction
  - workout
  - deep
---

# SQL Practice Define Indexes


---

## Exercise

Consider the `requests` table we defined. We know that this table will be very crowded. That is because each user can have more requests and there can be more users to request the same item. Create an index that will help use find the information about a user's request, knowing his `user_id`.

In order to check your results:

* add the index,
* build the schema,
* run the provided query,
* and provide the `Index_type` displayed in the result in the answer field.

