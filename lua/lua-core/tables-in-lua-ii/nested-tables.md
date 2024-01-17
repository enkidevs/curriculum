---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Nested Tables

---

## Content

Tables can also be **nested**, meaning you **can create a table that holds other tables** as its values:

```lua
my_nested_table = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
}
```

Each of these tables represents a row of values in a matrix[1]. To visualize nested tables that are not organized like the example above:
-  Every element of the **outer table represents a row** in the matrix.
-  Every element of the **inner tables represent a column** in the matrix.

---
## Footnotes

[1: Matrix]
A matrix is a two-dimensional table that contains a collection of values arranged in rows and columns. Each value in the matrix is identified by its row and column index. Lua does not have a built-in matrix type, but you can use nested tables to create a matrix-like structure.

---

## Practice

A nested table is a... ???

- Table that is an element of another table
- Table that holds a table as an element
- A table that holds only arithmetic elements
- A table that holds only boolean elements


---

## Revision

Tables can be nested. True or false? ???

- True
- False