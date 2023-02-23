---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# More on Matrices

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

Here's how to loop through the matrix and print each element:
```lua
for i = 1, #matrix do
  for j = 1, #matrix[i] do
    print(matrix[i][j])
  end
end
```

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