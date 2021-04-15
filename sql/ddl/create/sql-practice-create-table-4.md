---
author: SebaRaba
tags:
  - introduction
  - workout
type: exercise
linkType: sqlfiddle
link: 'http://sqlfiddle.com/#!9/cfc870/1'
answer: 2
links:
  - >-
    [MySQL define tables
    documentation](https://dev.mysql.com/doc/refman/5.7/en/creating-tables.html){documentation}
  - >-
    [explainer on how to create
    tables](https://www.w3schools.com/sql/sql_create_table.asp){website}
  - >-
    [explainer on sql
    dates](https://www.w3schools.com/sql/sql_dates.asp){website}
  - >-
    [video tutorial on creating
    tables](https://youtu.be/EaRj0S3K32Y?t=58s){video}
---

# SQL Practice Create Join Table


---

## Exercise

Create a table called `requests`. This table should contain the following columns, which should store the following values:

- `id`, a unique value to identify a request
- `user_id`, the ID of the requestor, for example: "1", "2",
- `user_item_id`, The ID of the user_item being requested, for example:  "1", "2",
- `date_from`, for example: "12-02-2017",
- `date_until`, for example: "12-02-2017",
- `accepted`, for example: "true" or "false"

After you've created that table, add this to your seed data

```sql
INSERT INTO requests (id, user_id, user_item_id, date_from, date_until, accepted)
VALUES (0, 3, 2, "2017-12-02", "2017-12-15", 1);

INSERT INTO requests (id, user_id, user_item_id, date_from, date_until, accepted)
VALUES (1, 4, 2, "2017-12-05", "2017-12-10", 0);

INSERT INTO requests (id, user_id, user_item_id, date_from, date_until, accepted)
VALUES (2, 3, 1, "2018-01-02", "2018-02-15", 1);

INSERT INTO requests (id, user_id, user_item_id, date_from, date_until, accepted)
VALUES (3, 1, 1, "2018-01-06", "2018-01-15", 1);

INSERT INTO requests (id, user_id, user_item_id, date_from, date_until, accepted)
VALUES (4, 3, 2, "2018-01-06", "2018-01-15", 1);

INSERT INTO requests (id, user_id, user_item_id, date_from, date_until, accepted)
VALUES (5, 1, 3, "2018-01-06", "2018-01-15", 1);
```

In total, you will need to:

- *create the table*
- *add the seed data*
- *build the schema*
- `SELECT COUNT(user_item_id), user_item_id FROM requests GROUP BY user_item_id`
- *run the provided query*
- *which item is the most requested?*
- *Enter the ID of the most requested item in the answer field*
