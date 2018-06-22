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

tags:
  - introduction
  - workout

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

For example, to insert a new item in the `item` table, where every value other than *name* (which is `text`) is `bigint`:
```sql
INSERT INTO item
VALUES (1230, 2500, 50, 33, DEFAULT,
  'bug-ball');
```

The column ordering in the schema is as follows:
```
id | cost | fling_power |
item_category_id | item_fling_effect_id |
name
```
Without specifying any column names, the insertion is done in the order in which the columns are defined in the schema. `1230` is the `id`, `2500` is the `cost` and so on.

The `DEFAULT` keyword means that there shouldn't be any special value for the property, other than the default one.

To insert into specific columns, you can use the following syntax:
```sql
INSERT INTO item (id, fling_power,
  item_category_id, name)
VALUES (1230, 50, 33, 'bug-ball');
```

This would effectively skip the `item_fling_effect_id` value. If the field *is not required* by the DB, this should work just fine.

Multiple insertion is done by adding multiple parentheses:
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

Any variant of the specific column insertion is applicable to the last query as well.

---
## Practice

Complete the following query to insert values into a new table called `water_pokemon`:
```sql
??? ??? water_pokemon
??? * FROM (SELECT pokemon.name
FROM pokemon_type
LEFT JOIN type ON
type.id = ???
RIGHT JOIN pokemon ???
pokemon.id = pokemon_type.pokemon_id
??? type.id = 11) AS water;
```

* `INSERT`
* `INTO`
* `SELECT`
* `pokemon_type.type_id`
* `ON`
* `WHERE`

---
## Revision

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
 
 
 
 
 
