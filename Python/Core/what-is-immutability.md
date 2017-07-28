# What is Immutability?
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know

links:

  - '[Immutability - Wikipedia](https://en.wikipedia.org/wiki/Immutable_object)'

---
## Content

Immutability is a concept from object-oriented and functional programming. An **immutable object** is usually defined as an object that cannot be modified after its creation, I.E. it stays the exactly the same throughout its entire life cycle. This is the opposite of a **mutable object**, where modifications after creation are permitted.

For example, if we were to create a list of names in a **mutable** fashion, and wanted to add another name, we would do something like this:

```python
list = ['John', 'Laura', 'Vithu']
list.append('Sam')
```

If our list was **immutable** this would not be possible, since this approach necessitates the modification of our list after its creation. Instead we would need to take an approach like so:

```python
names = ['John', 'Laura', 'Vithu']
newnames = names + ['Sam']

print(list(names))
# Result: ['John', 'Laura', 'Vithu']

print(list(newnames))
# Result: ['John', 'Laura', 'Vithu', 'Sam']
```

Here, we create an entirely new list, which includes the new name via *concatenation* when it is created. The old list is retained with the original values.

Why would we want this? At first glance, it may seem counterintuitive to operate in this way. After all, programs are collections of operations on data, and if every data mutation involves creating a whole new copy of each data structure, why should we bother with this waste of resources[1] and more complex code?

As it turns out, immutability has some *very* useful side-effects in certain situations.

First, immutable objects are guaranteed to be **thread safe**. This means that even with concurrent threads accessing the same object, you're guaranteed not to get any **concurrency errors** or **race conditions**, since none of the threads can modify the object after creation. Each thread is guaranteed to be able to access the object and the object will definitely be in the exact same state as the thread 'expects' it to be.

Second, immutable objects are easier to reason about through their life cycle, since we do not have to consider any kind of changes to the object which could happen later that we did not anticipate. This results in a higher level of security since it is easier to formally prove that there is no possible undefined behavior or subtle state-related bugs.

For example, see the following code, utilizing a custom class called `Connection` which takes a Python `HTTPConnection` and has a method called `request` which makes a HTTP request of the method (`PUSH`, `GET`, `POST`, etc.) specified. If a method is not specified it will be the same as last method used. Optionally, the body of the HTTP request can be passed in as well, as seen in the second request, `r2`:[2]

```python
conn = Connection(
  http.client.HTTPConnection(
              "httpbin.org", 80))
r1 = conn.request("POST")
r2 = conn.request("", "text=hello")
```

This code works correctly. However, we've introduced what is known as **'temporal coupling'** which is a dependency between objects in time. In this case, `r1 = conn.request("POST")` must be before the second request for the method in the second request to be `POST`.

This can be even more troublesome in languages where the `request` object is fully mutable and can be set and changed at arbitrary times; removing one line which configures the request for some later call breaks the code. We have to create a custom class to illustrate this issue as Python's standard library does not easily permit this.

If each `request` were used in an immutable way, the above would not work. Instead, the custom class could have the method specified in the initializer to avoid duplication of code.

```python
conn = Connection(
  http.client.HTTPConnection(
              "httpbin.org", 80),
                "POST")
r1 = conn.request()
r2 = conn.request("text=hello")
```

Regardless of what is removed before, these requests will work as expected. There is no temporal coupling here to introduce bugs.

There are some situations where **mutable** objects might be more suited, such as when we're trying to model real-world objects in a way that is intuitive at the level of the code. Since our perception of the *real world* is based on mutable objects (when I make a change to some physical object, I still think of it as the same object, just with the change applied, not a new object) it is often simpler in such cases to use *mutable* objects, or at least *weakly immutable*.[3]

---
## Practice

What is the difference between mutability, strong immutability and weak immutability? (Check the footnotes!)

1) Mutability prohibits modifications after creation. Weak immutability allows an mutable object to have some immutable fields. Strong immutability allows for objects to be modified after creation.

2) Mutability allows an immutable object to have some mutable fields. Weak immutability allows for objects to be modified after creation. Strong immutability prohibits modifications after creation.

3) Mutability allows for objects to be modified after creation. Weak immutability allows an immutable object to have some mutable fields. Strong immutability prohibits modifications after creation.

4) Mutability allows for objects to be modified after creation. Weak immutability allows an immutable object to be mutable under certain conditions. Strong immutability prohibits modifications after creation.

???

* 3
* 1
* 4
* 2

---
## Revision

How would we get the effect of adding another element to an immutable list?

???

* Create a copy of the list with the new element added during creation.
* Not possible.
* use the `.append()` method on the list.
* use the `+` operator.

---
## Footnotes

[1:Waste of Resources?]
Just because an object is immutable does not mean the object stored in the computer's *memory* is un-rewritable. Depending on implementation, immutable copies of objects will not actually copy the original object in memory and replicate it elsewhere. Instead, the compiler might just copy the *reference*, a 'signpost' to a location in memory where the original object lies, and record only the modification made along with the reference. Some languages even use a feature called *interning*, where references to objects are always used in the place of equal copies, which results in substantial speedup for operations such as equality comparison between objects.

As a result of these techniques, immutability does not necessarily mean that the program will be more resource intensive or run slower-- in fact, the complete opposite may be true, as we will discover.

[2:HTTP Requests]
For those not familiar with HTTP requests, it's not important to know the mechanics of HTTP to understand the concept. All that we need to understand to grasp the concept of temporal coupling is that there is some dependency where one method call must come before the other (to set some state in the object before the second method call) or otherwise there will be unexpected behavior.

[3:Weakly Mutable]
There are differing levels of immutability: **weak** and **strong**. An object is said to be **strongly immutable** if the entire object cannot be modified after creation. An object is said to be **weakly immutable** if the object contains some fields which *are* able to be modified after creation. I.E., the majority of the object would likely be immutable for the benefits that provides, but for convenience some data is still able to be modified after creation.
