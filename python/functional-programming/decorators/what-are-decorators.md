---
author: mihaiberq
type: normal
category: must-know
links:
  - >-
    [What are
    decorators?](https://www.thecodeship.com/patterns/guide-to-python-function-decorators/){website}
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

# What Are Decorators?


---

## Content

**Decorators**, or function decorators, are *wrappers* to existing functions, built using the concept of *higher-order functions* (closures).

You've got this generic function:

```python
def say_hello(name):
  return "Hello, {0}!".format(name)
```

Say you need to wrap the output of the function in *heading tags*, like this:

```html
<h2>Hello, Mike!</h2>
```

You could always define another function that makes use of `say_hello`:

```python
def hello_heading(name):
  return "<h2>{0}</h2>".format(say_hello(name))
```

Which is perfectly acceptable, but you'd be giving away the opportunity of making your code extensible. What if you are going to need a `say_goodbye` function, formatted in the same way? You'd have to create two more functions:

```python
def say_goodbye(name):
  return "Goodbye, {0}!".format(name)
def goodbye_heading(name):
  return "<h2>{0}</h2>".format(say_goodbye(name))
```

This is not ideal, since all you had done, for each function, was to **decorate** (enhance, manipulate or extend) their output. What if you could write a function that wraps any function's output in `<h2>` tags?

```python
def h2_decorate(string_function):
  def func_wrapper(name):
    return "<h2>{0}</h2>".format(string_function(name))
  return func_wrapper
```

There you have it! Your decorator returns a new function that wouldn't care about the underlying structure of the passed function - it would just wrap everything up:

```python
hello_wrapper = h2_decorate(say_hello)
goodbye_wrapper = h2_decorate(say_goodbye)
print(hello_wrapper("Mike"))
print(goodbye_wrapper("Sam"))
# <h2>Hello, Mike!</h2>
# <h2>Goodbye, Sam!</h2>
```

We've mentioned *higher-order functions* in the introduction. Try and figure out where the concept is used in `h2_decorate`'s function definition.

If you couldn't figure it out, consider that `h2_decorate`'s references to the `say_hello` and `say_goodbye` are still in scope when you call the wrapper functions (`hello_wrapper` and `goodbye_wrapper`, respectively): the time capsule worked.


---

## Practice

The number of similar-looking functions that can be decorated using the same decorator is

???

- as many as needed
- one
- two
- none


---

## Revision

Which of the following examples represent a decorator?

```python
def say_hello(name):
  return "Hello, {0}!".format(name)
# A
def hello_heading(name):
  return "<h2>{0}</h2>".format(say_hello(name))
# B
def hello_heading(func):
  def func_wrapper(name):
    return "<h2>{0}</h2>".format(func(name))
  return func_wrapper
```

```plain-text
???
```

- B
- A
- both
- neither
 
