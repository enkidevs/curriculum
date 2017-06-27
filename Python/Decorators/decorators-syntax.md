# Decorators syntax
author: mihaiberq

levels:

  - beginner

type: normal

category: feature

---
## Content

Now that you are familiar with the concept of decorators, we can talk about ways you'll see them in practice. With regard to syntax, Python specific decorator's symbol is `@`. Looking at the previous example:
```python
def say_hello(name):
  return "Hello, {0}!".format(name)
def h2_decorate(string_function):
  def func_wrapper(name):
    return "<h2>{0}</h2>"
      .format(string_function(name))
  return func_wrapper
hello_wrapper = h2_decorate(say_hello)
```
We can shorten the code and get rid of the variable assignment by introducing the `@` notation:
```python
def h2_decorate(string_function):
  def func_wrapper(name):
    return "<h2>{0}</h2>"
      .format(string_function(name))
  return func_wrapper

@h2_decorate
def say_hello(name):
  return "Hello, {0}!".format(name)

print(say_hello("Mike"))
# <h2>Hello, Mike!<h2>
```
As you can see, the function is decorated, without the need of an explicit `h2_decorate` binding. This shorthand notation is also useful in case of multiple decorators being used (`div_decorate` wraps a string in `div` tags):
```python
# variable assignment
def say_hello(name):
  return "Hello, {0}!".format(name)
long_wrap =
  div_decorate(h2_decorate(say_hello))
print(long_wrap("Mike"))
# @ notation
@div_decorate
@h2_decorate
def say_hello(name):
  return "Hello, {0}!".format(name)
print(say_hello("Mike"))
```
Both notations are equivalent to:
```HTML
<div><h2>Hello, Mike!</h2></div>
```
### Passing arguments

In our case, all the decorators do is wrap a string in tags. This example is simple and straightforward and this might not always be the case. As the outcome is similiar for both our decorators (*div* and *h2*), we can take advantage of another feature: passing arguments to the decorator function through `@` notation.

However, this syntax requires an additional enclosing function, as the **decorator** itself should only receive the function to be decorated as its sole parameter:
```python
def tags_wrapper(tag):
  def func_decorator(string_function):
    def name_wrapper(name):
      return "<{0}>{1}</{0}>"
        .format(tag, string_function(name))
    return name_wrapper
  return func_decorator

@tags_wrapper("div")
@tags_wrapper("h2")
def say_hello(name):
  return "Hello, {0}!".format(name)
print(say_hello("Mike"))
# <div><h2>Hello, Mike!</h2><div>
```

---
## Practice

Could a function that executes another function a number of times be considered a decorator?

???

* Yes
* No
* Maybe


---
## Revision

The maximum number of decorators a function can have is

???

* as many as needed
* 1
* 2
* 63
