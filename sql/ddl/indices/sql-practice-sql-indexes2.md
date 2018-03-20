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

link: http://sqlfiddle.com/

answer: done

standards:
  sql.define-indices.0: 1000
  sql.define-indices.1: 1000
  sql.define-indices.2: 1000
  sql.define-indices.3: 1000


links:
  - '[mysql modify columns documentation](https://dev.mysql.com/doc/refman/5.7/en/create-index.html){website}'
  - '[blog post on mysql define tables](https://atech.blog/viaduct/mysql-indexes-primer){website}'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=JjNef3tPltU){video}'

---
# SQL Practice Aggregate Average

---        
## Exercise

Consider the `requests` table we defined. We know that this table will be very crowded. That is because each user can have more requests and there can be more users to request the same item. Create an index that will help use find the information about a user's request, knowing his `user_id`.
