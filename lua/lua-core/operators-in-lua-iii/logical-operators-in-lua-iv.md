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

# The "Not" Operator

---
## Content

The `not` operator **returns the opposite boolean value** of its operand.

Unlike `and` and `or`, the `not` operator solely outputs boolean values, but can still accept other data types.

> Recall that only `false` and `nil` operands are **considered false** and **all other operands are true**

Here are some examples:
```lua
-- not operator
print(not true)  --> false
print(not false) --> true
print(not nil) --> true
print(not 1) --> false
```

---
## Practice

Add the appropriate logical operator to each equation to match the output comment:
```lua
print(??? true)  --> false
print(not ???) --> true
```

- `not`
- `false`
- `and`
- `or`
- `true`


---
## Revision

Add the appropriate logical operator to each equation to match the output comment:
```lua
print(??? true)  --> false
print(not ???) --> false
```

- `not`
- `true`
- `and`
- `or`
- `false`

