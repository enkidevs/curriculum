---
author: SebaRaba
tags:
  - introduction
  - workout
type: exercise
linkType: sqlfiddle
link: 'http://sqlfiddle.com/#!9/a3dff/1'
answer: 630209111320
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

Your mission today is to create a table called `users`.

This table should have the following columns, which will store the following values:

- `id`, a unique value to identify a user
- `name`, for example: "John Goose", "Elizabeth Duck"
- `facebook_id`, for example: "320985721018"
- `email`, for example: "john_goose@gmail.com"
- `email_verified`, which will be true or false

Once you've created your table, append these INSERT statements to the left-hand panel:

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

Finally, execute the query provided and submit the result

In total, you will need to:

- *Create the table*
- *Add the seed data*
- *Build the schema*
- *Run the provided query*
- *Submit the result as your Answer*

Good luck! :rocket:
