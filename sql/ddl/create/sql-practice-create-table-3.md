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

link: http://sqlfiddle.com/#!9/cfe738/1

answer: 10.399999618530273

standards:
  sql.define-tables.0: 1000
  sql.define-tables.1: 1000
  sql.define-tables.4: 1000
  sql.choose-sql-datatype.1: 1000
  sql.choose-sql-datatype.2: 1000
  sql.define-columns.0: 4000

links:
  - '[mysql define tables documentation](https://dev.mysql.com/doc/refman/5.7/en/creating-tables.html){website}'
  - '[explainer on how to create tables](https://www.w3schools.com/sql/sql_create_table.asp){website}'
  - '[video tutorial on creating tables](https://youtu.be/EaRj0S3K32Y?t=58s){video}'

---
# SQL Practice Create Join Table

---        
## Exercise

Today your mission is to create a table called `user_items`.
The purpose of this table is to connect which users own which items, so we'll be referencing IDs in other tables.

This table should contain the following columns, which should store the following values:  
- `id`, a unique value to identify a user's relationship with items
- `item_id`, for example:  "1", "2", this will refer to IDs in the `items` table
- `user_id`, for example: "1", "2", this will refer to IDs in the `users` table
- `daily_price`, for example: 10.43, 11

After you've created that table, add this to your seed data

```
INSERT INTO user_items (id, item_id, user_id, daily_price)
VALUES (0, 0, 1, 5.2);

INSERT INTO user_items (id, item_id, user_id, daily_price)
VALUES (1, 1, 2, 6.8);

INSERT INTO user_items (id, item_id, user_id, daily_price)
VALUES (2, 2, 2, 44.2);

INSERT INTO user_items (id, item_id, user_id, daily_price)
VALUES (3, 3, 1, 94);
```

In order to check your results:

- create the table,
- add the seed data,
- build the schema,
- `SELECT SUM(daily_price) FROM user_items WHERE user_id = 2`
- run the provided query,
- and provide the result in the answer field
