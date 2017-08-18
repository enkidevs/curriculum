# Benefits of using generators
author: Ricardo

levels:

  - basic

  - medium

type: normal

category: tip

tags:

  - generators

  - iterators

  - performance

links:

  - >-
    [www.jeffknupp.com](https://www.jeffknupp.com/blog/2013/04/07/improve-your-python-yield-and-generators-explained/){website}

---
## Content

Generators are functions which behave like iterators, but can have better performance characteristics. These include:   

* Creating values on demand, resulting in lower memory consumption.

* The values returned are lazily generated. Hence, it is not necessary to wait until all the values in a list are generated before using them.

However, the set of generated values can only be used once.

---
## Revision

Because generators create values on demand, this results in ??? memory consumption.

*lower
*higher
