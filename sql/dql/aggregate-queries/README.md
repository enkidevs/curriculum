name: Aggregate Queries

description: Tools for calculations across sets of data

insights:
  - group-by-clause
  - sum-clause
  - count-clause
  - min-and-max-clauses
  - distinct-clause
  - avg-clause

---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/b3fa3a
answer: 995
standards:
  sql.dql.aggregate-single-table.0: 1000
### Question
Compute the sum of `base_experience` for all `pokemon` that are not `default`.

---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/b3fa3a
answer: 16
standards:
  sql.dql.aggregate-single-table.0: 1000
### Question
Count all `moves` with `power` greater than `50`.

---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/b3fa3a
answer: 91
standards:
  sql.dql.aggregate-single-table.0: 1000
### Question
Compute the average accuracy of `moves` coming from generation `1`.

---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/b3fa3a
answer: 100, 3000
standards:
  sql.dql.aggregate-single-table.1: 1000
### Question
Write a query to find out the minimum and maximum item cost where the fling power is greater than 25.
---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/58d6e/40
standards:
  sql.dql.aggregate-single-table.1: 1000
### Question

Write a query that finds maximum `cost` for each `fling_effect` group, only if the `fling_power` is smaller than `25`.
---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/58d6e/42
answer: herb-effect
standards:
  sql.dql.aggregate-single-table.1: 1000
  sql.dql.aggregate-single-table.3: 1000
### Question
Write a query that will compute the average cost of all items in each `item_fling_effect` group and round the result to an integer.
What is the name of the group whose average cost is `583`.
---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/58d6e/44
answer: flinch
standards:
  sql.dql.aggregate-single-table.0: 1000
  sql.dql.aggregate-single-table.3: 1000
### Question
Write a query that counts how many items each `fling_effect` has. Find the name of the `fling_effect` that has `2` items.
---
