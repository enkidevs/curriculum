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

# Combining Equal and Greater/Less Operators

---
## Content


These are operators that **combine** the **Equal operator with the Greater/Less operators**:

|           Name           | Sign |
|:------------------------:|:----:|
|   less than or equal to  |  <=  |
| greater than or equal to |  >=  |

Unlike the Less/Greater than operators, these operators will **also check for whether the two values are also equal** to each other.

Here are some examples:

```lua
a = 10
b = 5
c = 10

print(a >= b) -- true
print(a <= b) -- false
print(a >= c) -- true
print(a <= c) -- true
```

---
## Practice

```lua
a = 5
b = 10
c = 10

first = (a >= b)
second = (a <= b)
third = (c >= b) 
```

`first` equals ???, `second` equals ???, `third` equals ???

- `false`
- `true`
- `true`

---
## Revision

```lua
a = 5
b = 10
c = 10

first = (a <= b)
second = (b < c)
third = (c <= b) 
```

`first` equals ???, `second` equals ???, `third` equals ???

- `false`
- `false`
- `true`
