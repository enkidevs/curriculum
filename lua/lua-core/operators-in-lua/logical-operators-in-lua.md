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

# Logical Operators

---
## Content

Logical operators are used to perform logical operations on boolean values. The three logical operators are `and`, `or`, and `not`.

The `and` operator returns `true` if both of its operands are true, and `false` otherwise. The `or` operator returns `true` if either of its operands are true, and `false` otherwise. The `not` operator returns the opposite boolean value of its operand.

Here are some examples:
```lua
-- and operator
print(true and true)   --> true
print(true and false)  --> false
print(false and false) --> false

-- or operator
print(true or true)    --> true
print(true or false)   --> true
print(false or false)  --> false

-- not operator
print(not true)  --> false
print(not false) --> true
```

---
## Practice

Add the appropriate logical operator to each equation to match the output comment:
```lua
print(true ??? true)   --> true
print(??? true)  --> false
print(false ??? false) --> false
print(??? false) --> true
print(true ??? false)  --> false
```

- `and`
- `not`
- `and`
- `not`
- `and`


---
## Revision

Add the appropriate logical operator to each equation to match the output comment:
```lua
print(??? false) --> true
print(true ??? true)    --> true
print(true ??? false)   --> true
print(??? true)  --> false
print(false ??? false)  --> false

```

- `not`
- `or`
- `or`
- `not`
- `or`

