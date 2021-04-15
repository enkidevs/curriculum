---
author: mihaiberq
type: normal
category: feature
links:
  - >-
    [More about higher-order
    functions](http://www.composingprograms.com/pages/16-higher-order-functions.html){website}
notes: 'prerequisites: scoping'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# What Are Higher-Order Functions?


---

## Content

A **higher-order function**, or *closure*, is a persistent scope which makes the variable be accessible even after the code execution has moved past that block:   

```python
def outer_function():
  scoped = "Hey!"
  def inner_function():
    print(scoped)
  #copy of the function object
  return inner_function

inner_copy = outer_function()
# executing the function
inner_copy()
# Hey!
```

The function defined within the outer function gains access to all the variables available to the function's local variables: `scoped` is in scope for `inner_function`.

Following this approach, all variables that where within the inner scope when `inner_function` was defined **keep their value**. We enclose those variables inside the function object, creating a **higher-order function**[1].

As long as the function reference exists, the variables inside the function will continue to persist as well.


---

## Practice

Alongside the function definition, a closure contains the function's

???

- scoped variables
- class members
- time capsule


---

## Revision

In which of the following snippets there's no closure present?

```python
# A
def foo():
  myname = "John"
  def bar():
    print(myname)
  return bar
# B
def foo(name):
  def bar():
    print(name)
  return bar
# C
myname = "John"
def foo():
  def bar():
    print(myname)
```

```plain-text
???
```

- C
- A
- B
- neither


---

## Footnotes

[1: Higher-Order Function]
A higher-order function is somewhat similar to a *time capsule*. You put together a bunch of stuff relevant for a moment in time (code block), store it and open it whenever you feel like reminiscing those times (using that particular block/function).
 
