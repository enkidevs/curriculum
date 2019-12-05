---
author: mihaiberq

levels:
  - beginner
  - basic
  - medium

type: normal

category: must-know

inAlgoPool: false

standards:
  sql.write.0: 10

aspects:
  - introduction
  - workout

parent: union

---

# INSERT

---
## Content

The `INSERT` operation allows new entries to be added to the table. The base syntax is as follows:

```sql
INSERT INTO table
VALUES (value1, value2, value3 ...);
```

Without specifying any column names, the insertion is done in the order in which the columns are defined in the schema.

Let's take a look at the following schema for the `items` table:

| id | cost | fling_power | item_category_id | item_fling_effect_id | name |

To insert a new record in the `items` table, you would use:

```sql
INSERT INTO items
VALUES (1230, 2500, 50, 33, DEFAULT,
  'bug-ball');
```

Notice that without specifying any column names, the insertion is done in the order in which the columns are defined in the schema: `1230` is the `id`, `2500` is the `cost` and so on.

The `DEFAULT` keyword here means that there shouldn't be any special value for the property, other than the default one defined when the table was created.

To insert into specific columns, you can use the following syntax:

```sql
INSERT INTO item (id, fling_power,
  item_category_id, name)
VALUES (1230, 50, 33, 'bug-ball');
```

This would effectively skip the `cost` and `item_fling_effect_id` value. If the fields *are not required* by the DB, this should work just fine and the RDBMS would store a `NULL` value. If, however, you omit a column which has a `DEFAULT` value defined, the RDBMS will store the default value rather than a `NULL`.

Multiple insertion are done by adding multiple parentheses:

```sql
INSERT INTO item (id, fling_power,
  item_category_id, name) VALUES
(1230, 50, 33, 'bug-ball'),
(1231, 50, 33, 'storm-ball');
```

You can also insert the results of a whole query:

```sql
INSERT INTO costless_item
SELECT * FROM item
WHERE item.cost <= 0;
```

Note that for this to work, the number and type of selected columns must correlate with either the number and type of columns specified after the `INSERT` keyword or with the number and type of columns found in the table. Any variant of the specific column insertion is applicable to the last query as well.

---
## Practice

Which syntax can be used to insert values in non-consecutive columns?

```sql
/* Syntax A */
INSERT INTO table
SELECT * FROM
(subquery);

/* Syntax B */
INSERT INTO table (column1, column2,
  column3)
VALUES (value1, 'value2', value3);

/* Syntax C */
INSERT INTO table
VALUES (value1, 'value2', value3);
```

???

* `B`
* `A`
* `C`

---
## Revision

Complete the following query to insert values into a new table called `water_pokemon`:

```sql
??? ??? water_pokemon (name, level, hp) 
??? ('Bulbasaur', 25, 150);
--
INSERT INTO water_pokemon
??? ??? FROM pokemon;
```

* INSERT
* INTO
* VALUES
* SELECT
* name, level, hp
* ADD
* IN
* VALS
* INTRODUCE
* age, attack, defense
