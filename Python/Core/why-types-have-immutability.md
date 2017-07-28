# Why Types have Immutability
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

links:

  - '[Python Reference: Data Model](https://docs.python.org/3/reference/datamodel.html)'
  - '[Blog post: Objects Should be Immutable](http://www.yegor256.com/2014/06/09/objects-should-be-immutable.html)'

---
## Content

Over the next insights we'll explore further into the conceptual and tangible benefits to using a type system that supports mutable and immutable objects, specifically with respect to the type system implemented in Python.

Python's data model is made up of **objects**. Objects are Python's abstraction for pieces of data. Therefore, all data within any Python program is stored within objects or as relationships between objects.

Objects have a taxonomy, I.E. a system of classification, made up of the object's identity, type and value. Identity and type are unchangeable once an object is created, although an object may be casted to a new object of a different type with the equivalent value. (E.G. a string of digits to an integer)

The only attribute of an object that may change is its value, and as we know, objects whose values can be changed are called **mutable** and those that cannot are **immutable**.

What advantages does this system inherently provide over a system where all objects are mutable?[1] We have encountered some of the advantages that can be enjoyed to varying extents in previous insights. You might remember some:

 - Atomicity of failure modes
 - Thread safety
 - Prevention of `NULL` references
 - Easier to reason about object lifecycle
 - Fewer side-effects in usage
 - Easier to cache
 - Prevention of temporal coupling
 - Easier to construct, test and use immutable objects

Let's visit each point and quickly understand the concepts behind each; we've already encountered thread safety, temporal coupling and object lifecycles briefly in previous insights.

### Prevention of Side Effects

Consider the following code, which concerns the `Connection` custom class from the last insight.[2] We've added a new method in the class called `post()` which has a definition like:

```Python
class Connection(object):
  ...
def post(self):
  self.method = "POST" # the important bit!
  self.httpconnection.request(
    self.method, "/")
  self.result =
    self.httpconnection.getresponse()
  conn.result.read()
  return self.result
```

Remember that if no HTTP method is specified, the `Connection` class just defaults to the last method it was given. So if we do:

```Python
conn = Connection(
  http.client.HTTPConnection(
              "httpbin.org", 80))
r1 = conn.post() # mutates the state!
r2 = conn.request("", "text=hello")
```

We might not expect the `post()` method to mutate the state of the `Connection` object, but because the object is mutable these kinds of lapses are possible. We should not have to comb through the details of each method to ensure there are no unintended side-effects to a simple call. These kinds of side effects can lead to maintainability issues and unintended behavior.

If the `post()` method treated the `Connection` object as immutable, all that would be needed to avoid side effects is:

```python
class Connection(object):
  ...
def post(self):
  self.httpconnection.request("POST", "/")
  self.result =
    self.httpconnection.getresponse()
  conn.result.read()
  return self.result
```

With this definition of the method there are no side effects, and `post()` can be called anywhere in the code without causing any other unintended behavior.

In the next insight we will consider avoiding identity mutation and atomicity of failure.

---
## Practice

Which of the following is not a benefit of using immutable objects?

1. Thread safety
2. Prevention of temporal coupling
3. Easier to reason about object lifecycle
4. Fewer side-effects in usage
5. Atomicity of failure modes
6. Easier to cache
7. Fewer lines of code to write
8. Prevention of `NULL` references
9. Easier to construct, test and use immutable objects

???

* 7
* 1
* 2
* 3
* 4
* 5
* 6
* 7
* 8
* 9

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

[2:The "Connection" Class]
To refresh from the previous insight, this is a custom class created to illustrate some features of immutability which uses the Python standard library's http.client.HTTPConnection library. This is necessary as the standard library is created in an way which disallows many of the pitfalls demonstrated here.
