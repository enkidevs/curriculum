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

# While Loops

---
## Content

A `while` loop allows you to **execute a block of code repeatedly as long as a certain condition is true**. 

Here is a visual example: 
![while-loop-visual](https://img.enkipro.com/063e7e6102a3e81bd693402ae0b8444c.png)

In Lua, the syntax for a `while` loop is as follows:

```lua
while condition do
  -- code to be executed while condition is true
end
```

The `condition` expression is **evaluated at the beginning of each iteration** of the loop. 

If the expression is true, then the code inside the loop is executed. This process continues until the `condition` expression becomes false.

---

## Practice

Finish the `while` loop in the code below with a **condition of "x" being true**:

```lua
while ??? do
  -- code to be executed while condition is true
end
```
- `x`
- `x = true`
- `x is true`
- `x ~= true`

---

## Revision

Finish the `while` loop in the code below such that the loop will eventually **terminate after variable x becomes 5** and the **final line in the output is `5`**:

```lua
x = 0
while ??? do
  print(x)
  ??? -- increase x by 1
end
```

- `x < 6`
- `x = x + 1`
- `x + 1`
- `x + 5`