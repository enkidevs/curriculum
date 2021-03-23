---
author: kapnobatai136
type: normal
category: must-know
tags:
  - insert
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

# Order Matters I


---

## Content

When inserting values, you are not limited to one entry per insert.

Using this simple table called `names`:

| id | name   |
| -- | ------ |
| 1  | Andrei |

Let's insert two records at once:

```sql
INSERT INTO names VALUES
(2, "Stefan"),
(3, "Catalin");
```

That's it! All you have to do is separate each entry by a comma. This is the resulting table:

| id | name    |
| -- | ------- |
| 1  | Andrei  |
| 2  | Stefan  |
| 3  | Catalin |

The order in which you insert records matters. Take a look at the following example:

```sql
INSERT INTO names VALUES
(5, "Mihai"),
(4, "Nemanja");
```

The following records will be inserted into the table **in the same order** that they were written in the `INSERT` command:

| id | name    |
| -- | ------- |
| 1  | Andrei  |
| 2  | Stefan  |
| 3  | Catalin |
| 5  | Mihai   |
| 4  | Nemanja |


---

## Practice

Using this `pets` table:

```md
| id  | name | age |
|-----|------|-----|
| 1   | Coco | 3   |
| ... | ...  | ... |
```

Complete the `INSERT` command to get this result:

```md
| id  | name    | age |
|-----|---------|-----|
| 1   | Coco    | 3   |
| ... | ...     | ... |
| 5   | Artemis | 6   |
| 4   | Simba   | 5   |
```

```sql
??? ??? VALUES
(???, "Artemis", ???),
(4, ???, 5);
```

- INSERT INTO
- pets
- 5
- 6
- "Simba"
- Simba
- "5"
- "6"


---

## Revision

Using the following `INSERT` command, which record will be the one that is first inserted into the table?

```sql
INSERT INTO flowers VALUES
(4, "Rose"),
(3, "Lilly");
```

???

- Rose
- Lilly
