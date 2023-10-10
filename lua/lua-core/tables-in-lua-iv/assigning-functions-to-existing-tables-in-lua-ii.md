---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Calling Functions Within Tables

---
## Content

We can then call functions using dot notation with the table name, followed by the key representing the desired operation.

> Using the functions we defined in the previous insight.

```lua
-- call the add function
print(operations.add(3, 5)) -- output: 8

-- call the subtract function
print(operations.subtract(7, 2)) -- output: 5

-- call the multiply function
print(operations.multiply(4, 6)) -- output: 24

-- call the divide function
print(operations.divide(10, 2)) -- output: 5
```
