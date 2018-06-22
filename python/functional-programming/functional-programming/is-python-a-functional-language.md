---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know


links:

  - '[The fate of reduce() in Python 3000](http://www.artima.com/weblogs/viewpost.jsp?thread=98196){website}'
  - '[Is Python a functional language?](https://www.quora.com/Is-Python-a-functional-language){website}'


---

# Is Python a Functional Language?

---
## Content

In the last few insights we've made references to different programming languages. Some we've referred to as *pure* functional languages, such as Haskell. This begs the question: *"Is Python a functional language?"*

In short: **No**. Python is not considered a functional programming language. This is due to a family of reasons that disqualify the language, mainly due to many of Python's standard data structures being mutable and many of the basic idioms and conventions being inherently impure due to the standard library not being in a functional style.

Python was not originally designed to support functional programming, and these changes were added around 1993, two years or so after its release.[1] However, over the years more support and demand for functional programming abilities have meant that the Python `functools` module is moderately popular and well-used, especially as an easy introduction to functional programming concepts.

Another important distinction between pure functional programming languages and Python is that Python does not differentiate clearly between *functions* and *procedures*.

Functions are defined much like in mathematics; they map inputs (also called a *domain*) to outputs (also called a *codomain*). If the function is pure, a given input will always return the same given output. If the function is *total*, it should have a valid output for every input. If not, it is *partial*.

Procedures are defined as any set of code instructions that can be executed, meaning they can do much more than just return outputs on inputs. Procedures include system calls, the mutation of memory, sending and receiving IO, and more. The distinction between the two entirely depends on the existence of side effects: functions should have none, anything with side effects is a procedure.

Why does this matter? Python does not distinguish between the two in language nor convention, unlike languages such as Scheme. This means that the programmer has no way of telling if some block of code is guaranteed to not cause side effects (a function) or if it could (a procedure) which is not very conducive to efficient functional programming.

The above being said, a functional style is still easily usable in all but the most challenging situations with Python, and it is also a great way to get used to many of the concepts and terminology associated with the functional style.

---
## Practice

What two adjectives describe a function which causes no side-effects and has a valid output for every input?

???


* Pure & Total
* Pure & Partial
* Partial & Pure
* Immutable & Total
* Partial & Total

---
## Revision

Is Python considered a functional language?

???


* No
* Yes
* Sometimes

---
## Footnotes
[1:How Python got Functional]
Python only acquired the functional methods `reduce()` `filter()` and `map()` (allegedly) after a Lisp hacker who missed them from that language submitted working patches. Additionally, Guido van van Rossum, the creator of Python also known as the BDFL (Benevolent Dictator For Life) once called for their removal from Python 3 in 2005. While the foundations may have been rocky, the `functools` module is well-used and presents an easy way for anyone new to functional programming concepts to introduce themselves to the idea before jumping to more functionally-focused languages such as Haskell.
 
