---
author: stefkn

levels:
  - beginner
  - basic
  - medium

aspects:
  - introduction
  - obscura

type: normal

category: must-know


links:

  - '[Python Reference: Data Model](https://docs.python.org/3/reference/datamodel.html){website}'
  - '[Blog post: Objects Should be Immutable](http://www.yegor256.com/2014/06/09/objects-should-be-immutable.html){website}'


---

# Why Types Have Immutability

---
## Content

Over the next insights we'll explore further into the conceptual and tangible benefits to using a type system that supports mutable and immutable objects, specifically with respect to the type system implemented in Python.

Python's data model is made up of **objects**. Objects are Python's abstraction for pieces of data. Therefore, all data within any Python program is stored within objects or as relationships between objects.

Objects have a taxonomy, I.E. a system of classification, made up of the object's identity (found with `(id(obj))`), type (found with `(type(obj))`) and value. Identity and type are unchangeable once an object is created, although an object may be casted to a new object of a different type with the equivalent value. (E.G. a string of digits to an integer)

The only attribute of an object that may change is its value, and as we know, objects whose values can be changed are called **mutable** and those that cannot are **immutable**.

What advantages does this system inherently provide over a system where all objects are mutable?[1] We have encountered some of the advantages that can be enjoyed to varying extents in previous insights. You might remember some:

 - Atomicity of failure modes
   - Errors don't break objects and instead are restricted to occurring only when objects are being constructed.
 - Thread safety
   - Freedom from concurrecncy errors.
 - Prevention of `None` references
   - Not accidentally encountering `None` where we expected data.
 - Easier to reason about object lifecycle
   - Since we know objects don't change, there is very little to worry about in this regard. 
 - Fewer side-effects in usage
   - Immutability discourages causing side-effects (See below.)
 - Easier to cache
   - We don't have to worry about keeping our cache up to date (as much) as the objects do not change.
 - Easier to test immutable objects
   - We can assume certain baseline facts about the objects our program will be working with and therefore it is easier to verify correctness.

Let's visit each point and quickly understand the concepts behind each; we've already encountered thread safety, temporal coupling and object lifecycles briefly in previous insights.

### Prevention of Side Effects

Side effects are unintended consequences of calling some function which the programmer is unaware of and can therefore cause undefined behaviour. In all but the most pure functional programming side-effects are unavoidable; the key is to ensure they are controlled and minimised.

Immutable objects help with this as they automatically rule out a whole class of side effects which take place after an object's creation. Unlike with mutable objects, nothing can change an immutable object after creation and therefore it is impossible to encounter bugs caused by a function changing an object the programmer did not intend to as part of its routine.

In the next insight we will consider avoiding identity mutation and atomicity of failure.

---
## Practice

Which of the following is not a benefit of using immutable objects?

1. Thread safety
2. Easier to test
3. Easier to reason about object lifecycle
4. Fewer side-effects in usage
5. Atomicity of failure
6. Easier to cache
7. Fewer lines of code to write
8. Prevention of `None` references

???


* 7
* 1
* 2
* 3
* 4
* 5
* 6
* 8

---
## Revision

What is the code snippet below an example of?

```python
class Connection(object):
  ...
  def post(self):
    self.method = "POST"
      # ^ mutates the Connection object
    self.httpconnection.request(
      self.method, "/")
    self.result =
      self.httpconnection.getresponse()
    conn.result.read()
    return self.result
```

???


* Side effects
* Temporal coupling
* Atomicity of failure
* Identity mutation

---
## Footnotes
[1:Advantages of Immutability]
Some programmers even advocate that in a perfectly object-oriented system, all objects should be immutable, although in reality this would be infeasible due to technical limitations in most mainstream programming languages. However, some functional languages provide rich support for a totally immutable environment, such as the less well-known but highly-regarded languages Scala and Haskell.
 
