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
    return "<h2>{0}</h2>".format(string_function(name))
  return func_wrapper
hello_wrapper = h2_decorate(say_hello)
```
We can shorten the code and get rid of the variable assignment by introducing the `@` notation:
```python
def h2_decorate(string_function):
  def func_wrapper(name):
    return "<h2>{0}</h2>".format(string_function(name))
  return func_wrapper

@h2_decorate
def say_hello(name):
  return "Hello, {0}!".format(name)

print(say_hello("John"))
# <h2>Hello, John!<h2>
```
As you can see, the function is decorated, without the need of an explicit `h2_decorate` binding. This shorthand notation is also useful in case of multiple decorators being used (`div_decorate` wraps a string in `div` tags):
```python
# variable assignment
def say_hello(name):
  return "Hello, {0}!".format(name)
long_wrap = div_decorate(h2_decorate(say_hello))
print(long_wrap("John"))
# @ notation
@div_decorate
@h2_decorate
def say_hello(name):
  return "Hello, {0}!".format(name)
print(say_hello("John"))
```
Both notations are equivalent to:
```HTML
<div><h2>Hello, John!</h2></div>
```
