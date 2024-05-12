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

# The "Or" Operator

---
## Content

The `or` operator **returns the first argument if its true**, and **otherwise returns the second argument**[1].

Similarly to the `and` operator, the `or` operator can be used with other data types.

> Recall that only `false` and `nil` operands are **considered false** and **all other operands are true**

Here are some examples:
```lua
-- boolean
print(true or true)    --> true
print(false or true)   --> true
print(false or false)  --> false

-- integers
print(5 or 6)         --> 5  

-- nil and false
print(nil or 10)      --> 10
print(false or 10)    --> 10
```

---
## Practice

In the code below, variable a is ??? and variable b is ??? 

```lua
a = (true or true)
b = (false or false) 
c = (true or false)  
```

- true
- false
- "true"
- "false"


---

## Revision

In the code below, variable b is ??? and variable c is ??? 

```lua
a = (true or true)
b = (true and false) 
c = (true or false)  
```

- false
- true
- "true"
- "false"

---

## Footnotes

[1: Short-Cut Evaluation]

This form of decision making is called **short-cut evaluation**, in which the second operand is evaluated only when necessary.
