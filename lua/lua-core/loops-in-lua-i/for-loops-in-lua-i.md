---
author: nemanjaenki
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

# For Loops

---

## Content

A `for` loop in Lua is used to **loop through a range of values**, which can be numbers or elements of a table or an array. 

Here is a visual example: 
![for-loop-visual](https://img.enkipro.com/cfe0a88b905445ec6d81ee82309852b8.png)

In Lua, the syntax for a `for` loop is as follows:
```lua
for variable = start_value, end_value, increment do
  -- body of the loop
end
```
The `variable` in the loop is initialized to the `start_value` and incremented by the `increment` value for each iteration until it reaches the `end_value`. 

The `increment` value can be positive or negative, and if not specified, it defaults to 1.

---

## Practice

Finish the code for a `for` loop below with the following conditions:

A start value of 0, an end value of 20, and an increment of 5

```lua
for variable = ???, ???, ??? do
  -- body of the loop
end
```

- 0
- 20
- 5

---

## Revision

In the code below, how many times will the `for` loop repeat? ???
```lua
for variable = 20, 50, 5 do
  -- body of the loop
end
```

- 7
- 6
- 5
- 8