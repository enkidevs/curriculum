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

# Calling Methods from Tables

---
## Content

To call the method `increment` in table, `my_table`, we will use **colon notation**:

```lua
-- call the method
my_table:increment() -- use colon notation
print(my_table.value) -- prints 1
```
We then call the method using the colon notation, which automatically passes the table object as the first parameter. Finally, we print the value of the `value` key, which should be 1 after calling the `increment` method.

> Recall that the increment() method increments the value in the table by 1.

---

## Practice

What notation should you use to call a method from a table? ???

- Colon notation
- Period notation
- Parentheses
- Square brackets

---

## Revision

Finish the code such that method `decrement` from a table `array` is called:

```lua
array ??? decrement()
```

- `:`
- `.`
- `=`
- `and`