# What Is a Closure?
author: mihaiberq

levels:

  - beginner

type: normal

category: feature

links:

  - >-
      [What is a closure? - JavaScript example](https://stackoverflow.com/questions/36636/what-is-a-closure){website}

---
## Content

One powerful characteristc of Python (and functional programming in general) is that you can pass around functions as arguments. This feature opens up a new world of posibilities when extending or reusing code.

Before we dig into how we can take advantage of this feature, let's focus on how Python handles scoping. When you declare a variable, that variable has a scope:
```python
1 def outter_function():
2   myNum = 3
3   print(myNum)
4 outter_function()
5 print(myNum)
# 3
# Traceback (most recent call last):
#   File "test.py", line 5, in <module>
#     print(myNum)
# NameError: name 'myNum' is not defined

```
As you can see, `my_num` works if used inside the function's body, but trying to print it inside the main body will throw a `NameError`. What about this snippet?
```python
1 my_num = 3
2 def outter_function():
3   print(my_num)
4 outter_function()
5 print(my_num)
```
Its output will be:
```python
# 3
# 3
```
You can reduce these example to the following statement: any inner-scoped block (function/if-else clause) has access to variables defined in their outer scope (enclosing function/if-else clause/global scope), but not the other way around.

### Closures

A **closure** is a persistent scope which makes the variable be accessible even after the code execution has moved past that block:
```python
def outter_function():
  my_num = 3
  def inner_function():
    print(my_num)
  #copy of the function object
  return inner_function

inner_copy = outter_function()
# executing the function
inner_copy()
# 3
```
The function defined within the outter function gains access to all the variables available to the function's local variables: `my_num` is in scope for `inner_function`. The difference between the first and the third snippet is that in the latter we return the **function object**.

Following this approach, all variables that where within the inner scope when `inner_function` was defined **keep their value**. We enclose those variables inside the function object, creating a **closure**[1].

As long as the function reference exists, the variables inside the function will continue to persist as well.

---
## Footnotes

[1: Closure]
A closure is somewhat similar to a *time capsule*. You put together a bunch of stuff relevant for a moment in time (code block), store it and open it whenever you feel like reminiscing those times (using that particular block/function).

---
## Practice

Alongside the function definition, a closure contains the function's

???

* scoped variables
* class members
* time capsule

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
* C
* A
* B
* neither
