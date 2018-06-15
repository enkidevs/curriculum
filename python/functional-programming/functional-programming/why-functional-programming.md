---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know


links:

  - '[Advantages Of Functional Programming](http://wiki.c2.com/?AdvantagesOfFunctionalProgramming){website}'
  - '[Functional Programming HOWTO](https://docs.python.org/2/howto/functional.html){website}'


---

# Why Functional Programming?

---
## Content

In this insight, we'll go a little deeper into the concept of functional programming by analyzing the benefits and drawbacks it can provide. Most of these points are applicable to functional programming in general and not specifically to functional programming within Python.

In order to get the full picture of what it means to program in a functional way we need to break down the tenets of functional programming: **using pure functions**, **eschewing shared state**, **using immutable data** and **avoiding side effects**.

### Pure Functions

One sure-fire way of making your programs more easy to reason about (and to avoid bugs) is to follow the **KISS** approach. (*Keep It Simple, Stupid*) Using only pure functions is a way of ensuring you follow this mantra.

Pure functions are functions which abide by a strict set of three rules:

 - **Given the same input, they will always return the same output.** (They will never return something different for the same input based on something else, such as the time or the weather or how it feels on that day).
 - **They produce no side effects.** (They will not change some other external object (a state object), the change can only be in the new returned value).
 - **They rely on no external mutable state.** (They are standalone units which work entirely independently of any external state. This is linked to the first point).

### Eschewing Shared State

A shared state is any kind of memory object (a variable, collection of variables or an object) which is accessible from multiple scopes. Often, in object-oriented programming (OOP), objects are shared between different scopes by adding properties to other objects. This is quite common in OOP, but cannot be done in functional programming.

Why? While this approach will work, issues will eventually arise without great care, such as race conditions or difficulty diagnosing bugs. In order to understand the effect of a function with shared state, you would need to gather the entire history of every shared variable that the function uses or affects, which is very difficult and tedious. Functional programming style designs away these difficulties.[1]

### Using Immutable Data

As you might remember from the insights on *immutability*, there are a number of advantages to using immutable data instead of mutable state objects.

To recap: an **immutable** object is an object which cannot be modified after its creation. In order to make changes to state using immutable obejcts, a new copy of the state object needs to be created, with the desired modifications added at the time of the creation of the copy.

Why is immutability so useful? Using immutable objects to keep track of your program's state means that there is a fully-traceable, completely accurate state history, which is not easily possible using traditional imperative programming.

Immutable objects allow us to avoid state bugs that come from unanticipated changes in state, and also help to avoid other issues discussed in the immutability workout, such as concurrency errors.

### Avoiding Side Effects

Side effects are the name given to any kind of application state change that is outside of the return value of a function. As we know, a pure function should not cause any changes in any external state as it does its business. This is one of the most important features of pure functions as it ensures they have no effect other than what is fully intended. (Or at least protects against most unintended modifications of state, which can lead to subtle bugs.)

Common side effects found in OOP-style software include seemingly-innocuous activities such as logging to the console, any system calls (writing to the screen, to a file, to the network...), triggering any external processes or any other functions which themselves cause side effects.[2]

Removing side effects (or at least minimizing them) makes our program easier to understand for debugging or just to spot design inefficiencies.

---
## Practice

Which of the below is a main concept of functional programming?

???


* Using pure functions
* Using mutable data
* Using lambda functions
* Avoiding explicit dependencies

---
## Revision

Which of the following statements about pure functions is true?

???


* Given the same input, they will always return the same output
* They are easier to code than normal functions
* They can use system calls
* They are faster

---
## Footnotes
[1:Designing away Bugs]
For example, a shopping website might have a "basket" object which is passed as a parameter to various scopes. The objects within that basket and the data about which user the basket belongs to would be mutated by various sections of code in these different scopes. If there was some temporal dependency between functions being called on the basket, altering or removing one function may accidentally (and not obviously) ripple out and break other functionality. Withtout shared state, you can ensure an entire class of bugs cannot manifest in our program.

[2:Side Effects & Pure Functions]
Purely-functional languages such as Haskell often encapsulate and isolate these kinds of side effects from pure functions using *monads*, which are another long topic too complex to be covered in this insight. In this case you can see a slight shortcoming in the functional programming paradigm in that a *real* purely-functional program shouldn't be able to do many of the things modern programs do, as many of those actions technically count as side effects. Functional frameworks need to provide ways to do these things for utility but they technically break compliance with pure functional style.
 
