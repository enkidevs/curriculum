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

# The "And" Operator

---

## Content

The `and` operator **returns the first argument if its false**, and **otherwise returns the second argument**.

> For those familiar with other coding languages, the output for boolean values remains the same (e.g. `true` is the output **if both operands are `true`**)

Due to this unique definition, other data types such as **integers** can be used with `and`.

> Recall that only `false` and `nil` operands are **considered false** and **all other operands are true**

Here are some examples:
```lua
-- boolean
print(true and true)   --> true
print(true and false)  --> false
print(false and false) --> false

-- integers
print(5 and 6)         --> 6  

print(nil and 10)      --> nil
print(false and 10)    --> false

```

---
## Practice

In the code below, variable a is ??? and variable c is ??? 

```lua
a = (true and true)
b = (false and false) 
c = (true and false)  
```

- true
- false
- "true"
- "false"



---

## Revision

In the code below, variable b is ??? and variable a is ??? 

```lua
a = (true and true)
b = (false and true) 
c = (true and false)  
```

- false
- true
- "true"
- "false"

