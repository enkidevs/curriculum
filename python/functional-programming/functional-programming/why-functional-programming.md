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
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Why Functional Programming?


---

## Content

In the next several insights, we'll go a little deeper into the concept of functional programming by analyzing the benefits and drawbacks it can provide. Most of these points are applicable to functional programming in general and not specifically to functional programming within Python.

In order to get the full picture of what it means to program in a functional way we need to break down the tenets of functional programming into 4 insights: **using pure functions**, **eschewing shared state**, **using immutable data** and **avoiding side effects**.

### Pure Functions

One sure-fire way of making your programs more easy to reason about (and to avoid bugs) is to follow the **KISS** approach. (*Keep It Simple, Stupid*) Using only pure functions is a way of ensuring you follow this mantra.

Pure functions are functions which abide by a strict set of three rules:

- **Given the same input, they will always return the same output.** (They will never return something different for the same input based on something else, such as the time or the weather or how it feels on that day).
- **They produce no side effects.** (They will not change some other external object (a state object), the change can only be in the new returned value).
- **They rely on no external mutable state.** (They are standalone units which work entirely independently of any external state. This is linked to the first point).


---

## Practice

Which of the below is a main concept of functional programming?

???

- Using pure functions
- Using mutable data
- Using lambda functions
- Avoiding explicit dependencies


---

## Revision

Which of the following statements about pure functions is true?

???

- Given the same input, they will always return the same output
- They are easier to code than normal functions
- They can use system calls
- They are faster
 
