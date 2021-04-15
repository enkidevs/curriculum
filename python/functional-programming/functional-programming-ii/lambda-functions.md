---
author: tommarshall
type: normal
category: tip
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

# `Lambda` Functions


---

## Content

Python has two tools for building functions, `def` and `lambda`.

Python's `lambda` tool is used for building function objects in situations where a simple one-off function is required. It is also used to create anonymous (without a name) functions.

Lambda, when used correctly, makes writing code easier and the end result more legible and clear. This is because we don't have to call an entirely different function defined somewhere else, and therefore we can see the function definition exactly where it is to be used.

For example, a normal function using `def`:

```python
def square(x):
    return x * x
```

The same function but defined with `lambda`:

```python
square = lambda x: x * x
```

To define an anonymous function, we declare the lambda function exactly where it is to be used.

```python
filter(lambda x: x % 3 == 0, foo)
```

In this case, we are passing the lambda function `x % 3 == 0` to `filter()` to be applied to each element in `foo`. Notice how we are not able to call this function outside of where it is declared. This is because the function is anonymous; there is no name to call it by outside of this context.

Note: Lambda should only be used when a function will be used in one location in your code, and won't be used again after that. In all other cases, it is better to use `def` to avoid unnecessary confusion.


---

## Practice

Filter the following list such that all elements are > 0. Use lambda functions:

```python

l = [-1,-2,3,-4,5,6]

new = filter(??? x: ???, ???)
```

- lambda
- `x > 0`
- l
- `x < 0`
- map
- list


---

## Revision

Complete the bottom code snippet to define the following function but with lambda:

```python
def square(x):
    return x * x
```

With lambda:

```python
square = ??? ???: x * x
```

- `lambda`
- `x`
- `def`
- `new`
- `instance`
- `function`
 
