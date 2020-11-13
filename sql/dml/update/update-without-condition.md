---
author: kapnobatai136

type: normal

category: must-know

tags:
  - update
  - syntax

---

# Updating Without a Condition

---

## Content

It is possible to use the `UPDATE` command without including a condition.

In the `mammals` table, someone mistakenly inserted a record that has a missing `id`:

| id   | name       |
|------|------------|
| 1    | Carnivores |
| 2    | Bats       |
| 3    | Marsupials |
| NULL | Primate    |

Let's see what happens when we don't use a condition:

```sql
UPDATE mammals
SET id = 4;
```

> 💬 What do you think will be the result? Leave a comment below or take a look at the other comments.

In this case, because we didn't include a condition, **all the records** will be updated to have an `id` equal to `4`:

| id | name       |
|----|------------|
| 4  | Carnivores |
| 4  | Bats       |
| 4  | Marsupials |
| 4  | Primate    |

> 💡 You should take care when updating data. One missed condition could lead to irreversible changes.

---

## Practice

What will the table look like after running the following command?

| id | name  | director      |
|----|-------|---------------|
| 1  | Cars  | John Lasseter |
| 2  | Moana | Ron Clements  |

```sql
UPDATE movies
SET director = "John";
```

| id | name  | director |
|----|-------|----------|
| 1  | Cars  | ???      |
| 2  | Moana | ???      |

- John
- John
- John Lasseter
- Ron Clements
- Ron
- Ron

---

## Revision

To update **all the records** in a table, you should ???.

- omit the WHERE clause
- write a strict constraint
- write a loose constraint