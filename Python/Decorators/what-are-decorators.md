# What Are Decorators?
author: mihaiberq

levels:

  - beginner

type: normal

category: must-know

links:
  - >-
    [What are decorators?](https://www.thecodeship.com/patterns/guide-to-python-function-decorators/){website}

---
## Content

**Decorators**, or function decorators, are wrappers to existing functions. Using the concept of closures, we can build such functions.

You've got this generic function:
```python
def say_hello(name):
  return "Hello, {0}!".format(name)
```
A function provided by an API you don't necessarily have access to - the string you need, but not formatted like this. What you are looking for is format it as a heading, for example:
```HTML
<h2>Hello, Mike!</h2>
```
You could always implement a hardcoded function that would pass the parameter the above function:
```python
def hello_heading(name):
  return "<h2>{0}</h2>".format(say_hello(name))
```
Which is perfectly acceptable, but you'd be giving away the opportiunity of making your code extensible. What if you are going to need a `say_goodbye` function, formatted the same way? You'd have to create a second function doing that:
```python
def say_goodbye(name):
  return "Goodbye, {0}!".format(name)
def goodbye_heading(name):
  return "<h2>{0}</h2>".format(say_goodbye(name))
```
This is not ideal, taking into account that all you had done, for both function, was to **decorate** their output (enhance, manipulate, extend). What if you wrote a function which takes another function as argument, that would wrap the result of the passed function in `<h2>` tags?
```python
def h2_decorate(string_function):
  def func_wrapper(name):
    return "<h2>{0}</h2>".format(string_function(name))
  return func_wrapper
```
There you have it! Your decorator returns a new function that wouldn't care about the underlying structure of the string, it would just wrap everything up:
```python
hello_wrapper = h2_decorate(say_hello)
goodbye_wrapper = h2_decorate(say_goodbye)
print(hello_wrapper("Mike"))
print(goodbye_wrapper("Sam"))
# <h2>Hello, Mike!</h2>
# <h2>Hello, Sam!</h2>
```
We've mentioned *the concept of closures* in the introduction. Try and figure out where one is created in the `h2_decorate` function definiton snippet.

If you couldn't figure it out, consider that `h2_decorate`'s references to the `say_hello` and `say_goodbye` are still in scope when you call the wrapper functions (`hello_wrapper` and `goodbye_wrapper`, respectively): the time capsule worked.
