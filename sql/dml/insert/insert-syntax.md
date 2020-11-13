---
author: kapnobatai136

type: normal

category: must-know

tags:
  - insert
  - syntax

---

# Syntax

---

## Content

Let's start off by taking a look at the `INSERT` syntax:

```sql
INSERT INTO table_name VALUES
(col1_value, col2_value, col3_value, ...);
```

This might look slightly confusing, so let's go over an example.

Consider the following `inventory` table:

| id | product  | quantity |
|----|----------|----------|
| 1  | Cucumber | 20       |
| 2  | Tomato   | 50       |

To add a new `product`, you'd start off by writing:

```sql
INSERT INTO inventory VALUES
```

Now, between parentheses, you should write the value for each column **in the same order** that they appear in the table.

To insert 30 carrots with 3 as `id`, you would have to write:

```sql
INSERT INTO inventory VALUES
(3, "Carrot", 30);
```

Here's how the `inventory` table looks like now:

| id | product  | quantity |
|----|----------|----------|
| 1  | Cucumber | 20       |
| 2  | Tomato   | 50       |
| 5  | Carrot   | 30       |

---

## Practice

What will the following command insert into the `flowers` table?

```sql
INSERT INTO flowers VALUES
(5, "Rose", "Rosaceae");
```

| id  | name   | family    |
|-----|--------|-----------|
| 1   | Lily   | Liliaceae |
| 2   | Acacia | Fabaceae  |
| ??? | ???    | ???       |

- 5
- Rose
- Rosaceae
- 3
- NULL

---

## Revision

What will the following command insert into the `flowers` table?

```sql
INSERT INTO flowers VALUES
(34, "Buttercup", NULL, "Ranunculales"),
(NULL, "Dahlia", "Asteraceae", "Asterales")
```

| id  | name   | family    | order    |
|-----|--------|-----------|----------|
| 1   | Lily   | Liliaceae | Liliales |
| 2   | Acacia | Fabaceae  | Fabales  |
| ??? | ???    | ???       | ???      |
| ??? | ???    | ???       | ???      |

- 34
- Buttercup
- NULL
- Ranunculales
- NULL
- Dahlia
- Asteraceae
- Asterales