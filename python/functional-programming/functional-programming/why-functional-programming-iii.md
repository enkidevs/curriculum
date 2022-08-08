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

# Using Immutable Data


---

## Content

As you might remember from the insights on *immutability*, there are a number of advantages to using immutable data instead of mutable state objects.

To recap: an **immutable** object is an object which cannot be modified after its creation. In order to make changes to state using immutable objects, a new copy of the state object needs to be created, with the desired modifications added at the time of the creation of the copy.

Why is immutability so useful? Using immutable objects to keep track of your program's state means that there is a fully-traceable, completely accurate state history, which is not easily possible using traditional imperative programming.

Immutable objects allow us to avoid state bugs that come from unanticipated changes in state, and also help to avoid other issues discussed in the immutability workout, such as concurrency errors.


---

## Practice

Which statement is not true regarding `immutable` objects?

???

- Immutable objects are easily modifiable at any time after creation.
- An immutable object is an object which cannot be modified after its creation.
- Immutable objects provide fully-traceable, completely accurate state history.
- To make changes to state using immutable objects, a new copy of the state object needs to be created.
 
