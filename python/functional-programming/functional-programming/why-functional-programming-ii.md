---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Advantages Of Functional
    Programming](http://wiki.c2.com/?AdvantagesOfFunctionalProgramming){website}
  - >-
    [Functional Programming
    HOWTO](https://docs.python.org/2/howto/functional.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Eschewing Shared State


---

## Content

A shared state is any kind of memory object (a variable, collection of variables or an object) which is accessible from multiple scopes. Often, in object-oriented programming (OOP), objects are shared between different scopes by adding properties to other objects. This is quite common in OOP, but cannot be done in functional programming.

Why? While this approach will work, issues will eventually arise without great care, such as race conditions or difficulty diagnosing bugs. In order to understand the effect of a function with shared state, you would need to gather the entire history of every shared variable that the function uses or affects, which is very difficult and tedious. Functional programming style designs away these difficulties[1].


---

## Practice

A shared state is ???

- any kind of memory object (a variable, collection of variables or an object) which is accessible from multiple scopes.
- is when a variable and an object can exist in different states at the same time.
- any program that can enter more than one state at a time.
- when the memory of a program is saved in multiple states to be used at different times.


---

## Footnotes

[1:Designing away Bugs]
For example, a shopping website might have a "basket" object which is passed as a parameter to various scopes. The objects within that basket and the data about which user the basket belongs to would be mutated by various sections of code in these different scopes. If there was some temporal dependency between functions being called on the basket, altering or removing one function may accidentally (and not obviously) ripple out and break other functionality. Without shared state, you can ensure an entire class of bugs cannot manifest in our program.
 
