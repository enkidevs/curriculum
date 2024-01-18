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

# Modifying Matrices

---
## Content

Now that we know what a Matrix is, let's see how we can manipulate it.

Let's use the same example from the previous insight:
```lua
-- Create a 2x2 matrix
matrix = {
  {1, 2},
  {3, 4}
}
```

Here's how you can modify a value:
```lua
print(matrix[2][2])
-- 4

matrix[2][2] = 5

print(matrix[2][2])
-- 5
```

---

## Practice

Given the following matrix:
```lua
matrix = {
  {4, 1},
  {9, 6}
}
```

How would you print the values of `9` and `1`?
```lua
print(???)
-- 9

print(???)
-- 1
```

- `matrix[2][1]`
- `matrix[1][2]`
- `matrix(1)(2)`
- `matrix(2)(1)`


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