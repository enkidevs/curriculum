---
author: SebaRaba
tags:
  - introduction
  - workout
type: exercise
linkType: sqlfiddle
link: 'http://sqlfiddle.com/#!9/26c1d4/1'
answer: 5
links:
  - >-
    [MySQL define tables
    documentation](https://dev.mysql.com/doc/refman/5.7/en/creating-tables.html){documentation}
  - >-
    [explainer on how to create
    tables](https://www.w3schools.com/sql/sql_create_table.asp){website}
  - >-
    [video tutorial on creating
    tables](https://youtu.be/EaRj0S3K32Y?t=58s){video}
---

# SQL Practice Create Table


---

## Exercise

Your mission for today is to create a table called `items`.  
This table should contain the following columns, used for storing these values:  

- `id`, a unique value to identify an item
- `name`, for example: "IP001", "IP002"
- `url`, for example "<https://www.w3schools.com/w3css/img_fjords.jpg">

When you have created the table, append these INSERT statements to the left-hand panel:

```sql
INSERT INTO items (id, name, url)
VALUES (0, "Pokeball", "http://placehold.it/200/200");

INSERT INTO items (id, name, url)
VALUES (1, "Superball", "http://placehold.it/200/200");

INSERT INTO items (id, name, url)
VALUES (2, "Megaball", "http://placehold.it/200/200");

INSERT INTO items (id, name, url)
VALUES (3, "IP001", "http://placehold.it/200/200");

INSERT INTO items (id, name, url)
VALUES (4, "IP002", "http://placehold.it/200/200");
```

In total, you will need to:

- *create the table*
- *build the schema*
- *add the seed data*
- `SELECT count(name) from items;`
- *provide the result of the above query in the answer field*
