---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Nested Tables

---

## Content

Tables can also be **nested**. Meaning you **can create a table that holds other tables** as its values:

```lua
my_nested_table = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
}
```

Each of these tables represents a row of values in a matrix[1].

---
## Footnotes

[1: Matrix]
A matrix is a two-dimensional table that contains a collection of values arranged in rows and columns. Each value in the matrix is identified by its row and column index. Lua does not have a built-in matrix type, but you can use nested tables to create a matrix-like structure.