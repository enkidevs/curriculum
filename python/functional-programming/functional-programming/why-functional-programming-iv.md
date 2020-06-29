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
---

# Avoiding Side Effects


---

## Content

Side effects are the name given to any kind of application state change that is outside of the return value of a function. As we know, a pure function should not cause any changes in any external state as it does its business. This is one of the most important features of pure functions as it ensures they have no effect other than what is fully intended (or at least protects against most unintended modifications of state, which can lead to subtle bugs).

Common side effects found in OOP-style software include seemingly-innocuous activities such as logging to the console, any system calls (writing to the screen, to a file, to the network...), triggering any external processes or any other functions which themselves cause side effects[1].

Removing side effects (or at least minimizing them) makes our program easier to understand for debugging or just to spot design inefficiencies.


---

## Footnotes

[1:Side Effects & Pure Functions]
Purely-functional languages such as Haskell often encapsulate and isolate these kinds of side effects from pure functions using *monads*, which are another long topic too complex to be covered in this insight. In this case you can see a slight shortcoming in the functional programming paradigm in that a *real* purely-functional program shouldn't be able to do many of the things modern programs do, as many of those actions technically count as side effects. Functional frameworks need to provide ways to do these things for utility but they technically break compliance with pure functional style.
 
