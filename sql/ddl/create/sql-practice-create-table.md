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

link: http://sqlfiddle.com/#!9/26c1d4/1

answer: 5

standards:
  sql.define-tables.0: 1000
  sql.define-tables.1: 1000
  sql.define-tables.4: 1000
  sql.choose-sql-datatype.1: 1000
  sql.choose-sql-datatype.2: 1000

links:
  - '[mysql define tables documentation](https://dev.mysql.com/doc/refman/5.7/en/creating-tables.html){website}'
  - '[blog post on mysql define tables](https://www.tutorialspoint.com/mysql/mysql-create-tables.htm){website}'
  - '[video tutorial on aggregate functions](https://www.youtube.com/watch?v=cQjyBDF2MF4){video}'

---
# SQL Practice Aggregate Average

---        
## Exercise

Your mission for today is to create a table called `items`.  
This table should contain the following columns, used for storing these values:  
- `id`, a unique value to identify an item
- `name`, for example: "IP001", "IP002",
- `url`, for example "https://www.w3schools.com/w3css/img_fjords.jpg"

When you have created the table, add these inserts to the Schema section.

Seed Data:  

```
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

**In order to check your results:**

- create the table
- build the schema
- add the seed data
- `SELECT count(name) from items;`
- provide the result of the above query in the answer field
