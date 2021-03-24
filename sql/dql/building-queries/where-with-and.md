---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [SQL Tutorial:
    WHERE](http://www.sql-tutorial.com/sql-where-sql-tutorial/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: relative
---

# WHERE with AND


---

## Content

As we know, `WHERE` allows us to select rows in a table by specifying *filtering* rules. 

**SQL supports both comparison operators[1]** (such as `=` and `>=`) **and logical operators[2]** (such as `AND`, `NOT` or `LIKE`). 

Using both allows us to define complex rules for extracting only the data that we need.

Here's another version of our favorite `pokemon` table:

| name       | level | hp | attack | defense |
| ---------- | ----- | -- | ------ | ------- |
| Rattata    | 1     | 30 | 56     | 35      |
| Pidgeotto  | 1     | 63 | 60     | 55      |
| Charmander | 3     | 44 | 57     | 48      |
| Pikachu    | 5     | 45 | 65     | 50      |
| Charmander | 10    | 50 | 66     | 54      |

Let's suppose we want the `name` and `level` of all the pokemon that are not named `'Charmander'` AND with a level that is **less than or equal to** `3`. 

We'd write:

```sql
SELECT name, level
FROM pokemon
WHERE 
  name <> 'Charmander' 
  AND level <= 3;
```

> 💡 And now you've met the not equal (`<>`) conditional!

The results looks like this:

| name      | level |
| --------- | ----- |
| Rattata   | 1     |
| Pidgeotto | 1     |


---

## Practice

Select all the columns and rows from the `pokemon` table where the `level` is less than `10` and `name` is not `'Bugsy'`.

```sql
SELECT * 
FROM pokemon
WHERE ??? 10 AND 
  ??? 'Bugsy';
```

- level <
- name <> 
- level <=
- level LESS THAN
- level IS LESS THAN
- name NOT EQUAL
- name IS NOT


---

## Revision

Select all the rows from the `pokemon` table where the name is exactly equal to `braixen`.

```sql
SELECT * 
FROM pokemon
??? ??? ??? ???;
```

- WHERE
- name
- =
- 'braixen'
- FROM
- pokemon
- EQUALS


---

## Quiz

### Can you find a particular entry in a table with SQL?


Consider the `ability` table and the following query:

| id  | is_main_series | generation_id | name         |
| --- | -------------- | ------------- | ------------ |
| 1   | t              | 3             | stench       |
| 2   | f              | 3             | drizzle      |
| 3   | t              | 3             | speed-boost  |
| 4   | t              | 3             | battle-armor |
| ... | ...            | ...           | ...          |

```sql
SELECT *
FROM ability
```

We want to get the record for the ability called `"speed-boost"`. Which of the following `WHERE` clauses will
have this result when used with the above query?

???

- WHERE name='speed-boost';
- WHERE name IS "speed-boost";
- WHERE ability='speed-boost';
- WHERE id='speed-boost';


---

## Footnotes

[1:Comparison Operators]
These operators are used for comparing values and the result is either `true` or `false`. As an example, `=` is a comparison operator and it is used to determine whether two values are equal.

[2:Logical Operators]
These operators allow computers to take decisions based on multiple conditions. Using two conditions (or more) together with these operators will result in complex conditions. A good example can be defining a range using the `AND` logical operator:

```plain-text
x > 5 AND x < 10
```
