---
author: kapnobatai136
type: normal
category: must-know
tags:
  - update
  - syntax
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Updating With Different Conditions I


---

## Content

One of the most important parts of the `UPDATE` command is the condition.

It is set using the `WHERE` keyword, and it dictates which records will be updated.

What's important to understand is that `WHERE` works the same in the `UPDATE` clause as it does in the `SELECT` clause.

### No Condition

It is possible to use the `UPDATE` command without a condition.

In the `mammals` table[1], someone mistakenly inserted a record that has a missing `id`.

Let's see what happens when we try to update the table and we don't use a condition:

```sql
UPDATE 
  mammals
SET 
  id = 4;
```

> 💡 Not including a condition is equivalent to writing `WHERE TRUE`.

In this case, because we didn't include a condition, **all the records** will be updated to have an `id` equal to `4`:

| id | name       |
| -- | ---------- |
| 4  | Carnivores |
| 4  | Bats       |
| 4  | Marsupials |
| 4  | Primate    |

> ❗ You should take care when updating data. One missed condition could lead to irreversible changes.

### Strict Condition

The correct way to update the `mammals` table is to set a good condition.

You could try:

```sql
UPDATE
  mammals
SET
  id = 4
WHERE
  id is NULL;
```

But, what if there is another record that has `NULL` for `id` that you didn't see?

In this case, you would do:

```sql
UPDATE
  mammals
SET
  id = 4
WHERE
  id is NULL AND
  name = "Primate";
```

The combination of `id` and `name` in the condition will ensure that you target the exact record that you want.


---

## Practice

You can update all the records in a table by not including a condition or writing:

```sql
WHERE ???
```

- TRUE
- ALL
- UPDATE ALL
- ALL


---

## Revision

Which records will the following command update?

```sql
UPDATE 
  students
SET
  class = 2;
```

???

- All the records
- All the records from class = 2
- Only the records that don't have a class


---

## Footnotes

[1: Mammals Table]

Here is the `mammals` table

| id   | name       |
| ---- | ---------- |
| 1    | Carnivores |
| 2    | Bats       |
| 3    | Marsupials |
| NULL | Primate    |
