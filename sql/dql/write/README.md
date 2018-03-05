name: INSERT, UPDATE, and DELETE

type: insights-list

description: Alter data in your database with these commands

section: 1

parent: joins

insights:
  - insert
  - update-clause
  - delete-clause
---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/58d6e/4
standards:
  sql.write.5: 1000
### Question
From `item` table `DELETE` the item having id 10.
---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/58d6e/3
answer: nidoqueen
standards:
  sql.write.0: 1000
### Question
Insert into `pokemon` a new record with the following field values:
  - id:  31
  - order:  44
  - height: 13
  - weight: 600
  - base_experience: 227
  - is_default: true
  - pokemon_species_id: 31
  - name: nidoqueen
To test whether your insert worked, run the query provided in the link and check the result. In the answer field provide the result of the query.
---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/58d6e/5
answer: 37
standards:
  sql.write.3: 1000
### Question
Update `move` table such that the 14th move will have accuracy equal to 37. In the answer field provide the result of the query that is present in this SQLFiddle link.
---
