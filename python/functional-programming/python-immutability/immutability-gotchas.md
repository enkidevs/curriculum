---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Common
    Gotchas](http://docs.python-guide.org/en/latest/writing/gotchas/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Immutability Gotchas!


---

## Content

For the final insight, let's examine some of the most common slip-ups we could make related to immutability. While at first glance some of these errors can seem difficult to understand, if we examine them from the point of view of the underlying mechanisms of the language it will be clear to see how they work. Being able to grasp these subtleties of the language will be valuable in helping us write code that performs basic functions correctly on the first try, helping to decrease the time we need to spend hunting for bugs.

### Mutable Default Arguments

If you want to define an optional argument to a method in Python, you can define a default argument to fall back on if the argument is not supplied. The syntax to do this is:

```python
def your_method(self, optional="default"):
    do_some_stuff(self)
    # and more stuff here...
```

What has this got to do with immutability? Let's create our own method with optional arguments. Let's make a utility method which adds a given object into a supplied collection object. The collection can be optional; *if a collection is not supplied we'll create a new one.* You might have thought of something like this:

```python
def add_to(object, collection=[]):
  collection.append(object)
  return collection
```

Simple, right? Let's run it:

```python
>>> list = [1, 2, 3]
>>> add_to(4, list)
# [1, 2, 3, 4]
```

Awesome! It works. Let's make sure the default argument also works if we don't provide a container.

```python
>>> add_to(1)
# [ 1]
>>> add_to("testing")
# [1, 'testing']
```

Oh dear. It's not creating a new `list` each time, it's adding them all to the same list. Why?

In Python, the arguments are evaluated at the time the function is defined, not later. In this case, the default `list` to be used when there is no container provided as an argument is created at this time, and being *mutable*, it is continually added to when we call the method.

A better idea would be to use an immutable object as a default and run a check to see if it's there in the body of the method, like so:

```python
def add_to(object, collection=None):
  if collection is None:
    collection = []
  collection.append(object)
  return collection
```


---

## Practice

How can we prevent a function we define with a mutable default argument from using that same default argument object each time?

???

- Replace the default with an immutable object and check in the function body if it's still there, and if so, create the container.
- Replace the default with an immutable container.
- Replace the default with an immutable container and check in the function if it's empty, and if so, create the container.
- Use a lambda function.


---

## Revision

What is the result of executing the following code?

```python
def add_to(object, collection=[]):
  collection.append(object)
  print(collection)
  return collection

add_to(1)
add_to(2.5)
add_to("string")
```

???

- `[1], [1, 2.5], [1, 2.5, 'string']`
- `[1], [2.5], ['string']`
- `[1], [1], [1]`
- `[1], [2.5, 1], ['string', 2.5, 1]`
- `TypeError`


---

## Quiz

### what is the last line printed?


```python
def foo(x, k = []):
    k.append(x)
    print(k)
foo(1)
foo(2, [4, 5])
foo(3)
```

 ???

- [1, 3]
- [1]
- [4, 5, 2]
- [1, 2, 3]
 
