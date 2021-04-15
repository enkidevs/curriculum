---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [A slower, more detailed
    explanation](https://stackoverflow.com/a/18744706){website}
  - >-
    [Double-underscores in
    Python](https://dbader.org/blog/meaning-of-underscores-in-python){website}
  - >-
    [Iterables vs. Iterators vs.
    Generators](http://nvie.com/posts/iterators-vs-generators/){website}
  - >-
    [OOP Parents and
    Children](http://www.htmlcenter.com/blog/object-oriented-programming-parents-and-children/){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# What Is an Iterable?


---

## Content

**Iteration** is the process of taking one element at a time from a collection of elements.

In Python, an `iterable` object is an object capable of returning its members one at a time. When we refer to an object's members, we mean **that the iterable object itself is a collection of objects.** The objects contained within (the members) are, by convention, called **children** and the collection object containing the children is called the **parent**.[1]

Examples of iterable objects include:

- All sequence types, such as `list`, `str` (string), `tuple`.
- Some non-sequence types, such as `dict` or file objects/streams.
- Any other object whose class has a defined `__iter__()` or `__getitem__()` method, which return an `iterator` or, given a valid index number, return a member of the collection. (i.e. a `child`)

To expand on the `__iter__()` and `__getitem__()` methods: these are called double underscore methods[2] which refer to built-in protocols that classes can choose to implement if the designers wish. Most built-in classes implement these methods already.

`__iter__()` is the method which returns an iterator for the instance of the class it is called on. An iterator is an object which returns each member of the parent object sequentially. We will revisit iterators in much more detail in the next few insights.

`__getitem__()` is the method used for indexed lookup. This method takes an index (a number between 0 and one less than the iterable object has members, since we count from zero) and returns the element at that index (position) in the collection `__getitem__()` is called on.

When defining a custom class, you can redefine any of these methods in any way, although it is recommended to keep within convention. If you override `__getitem__()`, for example, it should still return items via indexed lookup, although how that is implemented in your custom class is up to you.

This is a very well-used and crucial topic within Python, and many of Python's built-in functions only work on `iterable` objects. In the following insights we'll go further in depth about iterators, Python's iteration protocol, and more.


---

## Practice

Which of the objects below are `iterable`?

???

- `Sequence types (list, str, tuple...)`
- Collection types
- Any custom classes
- Iterators
- Any object
- `Any object with a defined __next__() method`


---

## Revision

What is the difference between `__getitem__()` and `__iter__()`?

???

- `__getitem__() is for indexed lookup, __iter__() returns an iterator`
- `__getitem__() returns the item, __iter__() returns an iterator`
- `__getitem__() is for indexed lookup, __iter__() returns an iterable`
- `__getitem__() returns an iterator, __iter__() is for index lookup`


---

## Footnotes

[1:Parent and Child objects]
This is not to be confused with the concept of parents/children in Object-Oriented Programming, which is slightly different, semantically. In OOP, the concept of parent and children objects usually refers to the concept of **inheritance**, where the features of a parent class are inherited by its children. For more information, please see 'OOP Parents and Children' in the 'Learn More' section.

[2:Double Underscore in Python]
Double underscores in Python are commonly referred to by Pythonistas as "dunder" for brevity. `__iter__` is therefore pronounced *"dunder iter"*.

The meaning behind double underscores is to allow the core Python team to define so-called "Magic Methods" which define certain protocols that classes can choose to implement or not. By default, many of the built-in classes implement these methods.

The double underscore was chosen as way to not have as many `reserved` method names such as in Java, by prefixing and postfixing the underscores, the name `iter` is still usable in code without interfering with the language's underlying mechanisms.
 
