# Facade Pattern
author: nickdaminov

levels:

  - medium

type: normal

category: pattern

links:

  - '[More on the Facade Pattern](https://enki.com)'

---
## Content

Another pattern which is common for the object oriented development is *Facade*. The key idea is to hide the complexity of calculations and multiple method calls in order to provide the end user with a clean interface which implements all the necessary functionality.

Example: suppose our system is capable of taking two 2D points and calculate distance between them. Suppose that the end user desires to get perimeter and area of a 2D shape without calculating it manually. Then we could create a facade class specific to the task that takes in a basic array of vertices:


---
## Revision

What is the *Facade* pattern?

???

* It is a wrapper around the system that provides the end user with a clean desired functionality.
* It is a front part of the building.
* It describes how a group of interfaces act together.
