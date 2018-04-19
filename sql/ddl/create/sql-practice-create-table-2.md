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

link: http://sqlfiddle.com/#!9/a3dff

answer: 630209111320

standards:
  sql.define-tables.0: 1000
  sql.define-tables.1: 1000
  sql.define-tables.4: 1000
  sql.choose-sql-datatype.1: 1000
  sql.choose-sql-datatype.2: 1000
  sql.define-columns.0: 5000

links:
  - '[MySQL define tables documentation](https://dev.mysql.com/doc/refman/5.7/en/creating-tables.html){documentation}'
  - '[explainer on how to create tables](https://www.w3schools.com/sql/sql_create_table.asp){website}'
  - '[video tutorial on creating tables](https://youtu.be/EaRj0S3K32Y?t=58s){video}'

---

# SQL Practice Create Table

---        
## Exercise

Your mission today is to create a table called `users`.

This table should have the following columns, which will store the following values:
- `id`, a unique value to identify a user
- `name`, for example: "John Goose", "Elizabeth Duck",
- `facebook_id`, for example: "320985721018",
- `email`, for example: "john_goose@gmail.com",
- `email_verified`, which will be true or false

Once you've created your table, use these INSERT statements to test:

```sql
INSERT INTO users (id, name, facebook_id, email, email_verified)
VALUES (0, "John Goose", 33248712993, "john.goose@example.com", 0);

INSERT INTO users (id, name, facebook_id, email, email_verified)
VALUES (1, "Elizabeth Duck", 433893129012, "e.duck@example.com", 0);

INSERT INTO users (id, name, facebook_id, email, email_verified)
VALUES (2, "Kevin Cockatiel", 813494583, "k.Cockatiel@example.com", 1);

INSERT INTO users (id, name, facebook_id, email, email_verified)
VALUES (3, "Jay Blue", 419021302344, "j.blue@example.com", 1);

INSERT INTO users (id, name, facebook_id, email, email_verified)
VALUES (4, "Polly Parrot", 630209111320, "p.parrot@example.com", false);
```

In order to check your results:
- create the table,
- add the seed data,
- build the schema,
- run `SELECT MAX(facebook_id) FROM users;`
- provide the result in the answer field
