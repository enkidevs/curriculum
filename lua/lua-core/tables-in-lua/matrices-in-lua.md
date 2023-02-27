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

# Matrices

---
## Content

A matrix is a two-dimensional array, which can be used to represent tables of data with rows and columns. It is essentially an array of arrays, with each sub-array representing a row of the matrix.

Matrices can be created using Lua's table syntax, where each element in the table is itself a table representing a row. This makes it easy to access specific elements within the matrix using two indices, one for the row and one for the column.

Take a look at this example:
```lua
-- Create a 2x2 matrix
matrix = {
  {1, 2},
  {3, 4}
}

-- Access an element of the matrix
print(matrix[1][1])
-- 1

print(matrix[1][2])
-- 2

print(matrix[2][1])
-- 3

print(matrix[2][2])
-- 4
```

Matrices are commonly used in mathematical computations, such as linear algebra, where they are used to represent vectors and transform matrices. However, they can also be used for other types of data, such as representing a grid of game board positions in a game of chess or representing pixel values in an image.

---
## Practice

Create a 2x2 matrix that satisfies these conditions:
```lua
`matrix[2][1]` = `6`
`matrix[2][2]` = `8`
`matrix[1][1]` = `2`
`matrix[1][2]` = `4`
```

```lua
matrix = {
  {???, ???},
  {???, ???}
}
```

- 2
- 4
- 6
- 8


---
## Revision

Given the following matrix:
```lua
matrix = {
  {1, 3},
  {5, 7}
}
```

How would you print the values of `3` and `7`?
```lua
print(???)
-- 3

print(???)
-- 7
```

- `matrix[1][2]`
- `matrix[2][2]`
- `matrix(1)(2)`
- `matrix(2)(2)`