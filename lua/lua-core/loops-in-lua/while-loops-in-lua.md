---
author: Stefan-Stojanovic
category: must-know
type: normal
---

# While Loops

---
## Content

In Lua, a `while` loop allows you to execute a block of code repeatedly as long as a certain condition is true. The basic structure of a while loop in Lua looks like this:

```lua
while condition do
  -- code to be executed while condition is true
end
```

The `condition` expression is evaluated at the beginning of each iteration of the loop. If the expression is true, then the code inside the loop is executed. This process continues until the `condition` expression becomes false.

Here's an example of a while loop in action:
```lua
-- print numbers from 1 to 5
local i = 1
while i <= 5 do
  print(i)
  i = i + 1
end
```

In this example, the loop will execute as long as `i` is less than or equal to 5. On each iteration, the current value of `i` is printed to the console, and then `i` is incremented by 1. When `i` reaches 6, the condition `i <= 5` becomes false, and the loop terminates.

The output would look like this:
```lua
-- 1
-- 2
-- 3
-- 4
-- 5
```


---
## Practice

---
## Revision