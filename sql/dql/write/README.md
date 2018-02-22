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
answer: 0
### Question
From `item` table `DELETE` the item having id 10. To check if your query worked a DQL query is provided. Run it and answer with the result count you get from running this DQL query.
---
## Exercise
sqlfiddle-link: http://sqlfiddle.com/#!9/58d6e/3
answer: nidoqueen
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
### Question
Update `move` table such that the 14th move will have accuracy equal to 37. In the answer field provide the result of the query that is present in this SQLFiddle link.
