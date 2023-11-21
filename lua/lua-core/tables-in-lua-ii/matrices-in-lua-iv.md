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

# Transversing Matrices

---
## Content


Here's how to loop through the matrix and print each element:

```lua
for i = 1, #matrix do
  for j = 1, #matrix[i] do
    print(matrix[i][j])
  end
end
```

In this code, **`i` represents every element of the outer array**, while **`j` represents the elements of the inner arrays** found in the elements of the outer array. This code will loop through each row/inner array using `j`, and moves on to the next row through `i`. 

To create a **proper stopping point**, we will **use the length of the outer and inner arrays** for the columns and rows respectively. To get the length, we put a `#` before the name of the matrix for the outer arrays, and matrix[] for the inner arrays.


---
## Practice

Finish the code such that it will loop through a matrix and print each element. Assume the name given to the matrix is "matrix".

```lua

for i = 1, ??? do
  for j = 1, ??? do
    print(matrix[i][j])
  end
end

```

- #matrix
- #matrix[i]
- matrix
- #matrix[]


---
## Revision

Finish the code such that it will loop through a matrix and print each element. Assume the name given to the matrix is "matrix".

```lua
for i = ???, #matrix do
  for ??? = 1, #matrix[i] do
    print(matrix[???][j])
  end
end
```


- 1
- j
- i
- 0
- #matrix
- #matrix[i]