name: Aggregate Queries

type: insights-list

description: Tools for calculations across sets of data

section: 1

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
  sql.aggregate-multiple-tables: 10
### Question
Using `pokemon` table. Compute the sum of base_experience for all pokemons that are not default.

---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/b3fa3a
answer: 16
standards:
  sql.aggregate-multiple-tables: 15
### Question
Count all moves with power greater than 50.

---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/b3fa3a
answer: 91
standards:
  sql.aggregate-multiple-tables: 30
### Question
Compute the average accuracy of moves coming from generation 1.

---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/b3fa3a
answer: 100, 3000
standards:
  sql.aggregate-multiple-tables: 40
### Question
Write a query to find out the minimum and maximum item cost where the fling power is greater than 25.
---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/58d6e/40
answer: 1000	badly-poison
        20	berry-effect
        300	herb-effect
        1000	paralyze
standards:
  sql.aggregate-multiple-tables: 40
### Question
Write a query that finds maximum costs for each fling_effect group, only if the fling_power is smaller than 25.
---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/58d6e/42
answer: herb-effect
standards:
  sql.aggregate-multiple-tables: 30
### Question
Write a query that will compute the average cost of all items in each item_fling_effect group and round the result to integers.
In order to check your results, in the answer field provide only the name of the group's whose average cost is 583.
---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/58d6e/44
answer: flinch
standards:
  sql.aggregate-multiple-tables: 5
### Question
Write a query that counts how many items each fling_effect has. To check your result provide in the answer field the name of
fling_effect's name containing the 2 items.
