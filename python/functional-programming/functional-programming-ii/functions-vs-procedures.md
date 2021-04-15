---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [The fate of reduce() in Python
    3000](http://www.artima.com/weblogs/viewpost.jsp?thread=98196){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Functions vs procedures


---

## Content

Another important distinction between pure functional programming languages and Python is that Python does not differentiate clearly between *functions* and *procedures*.

Functions are defined much like in mathematics; they map inputs (also called a *domain*) to outputs (also called a *codomain*). If the function is pure, a given input will always return the same given output. If the function is *total*, it should have a valid output for every input. If not, it is *partial*.

Procedures are defined as any set of code instructions that can be executed, meaning they can do much more than just return outputs on inputs. Procedures include system calls, the mutation of memory, sending and receiving IO, and more. The distinction between the two entirely depends on the existence of side effects: functions should have none, anything with side effects is a procedure.

Why does this matter? Python does not distinguish between the two in language nor convention, unlike languages such as Scheme. This means that the programmer has no way of telling if some block of code is guaranteed to not cause side effects (a function) or if it could (a procedure) which is not very conducive to efficient functional programming.

The above being said, a functional style is still easily usable in all but the most challenging situations with Python, and it is also a great way to get used to many of the concepts and terminology associated with the functional style.


---

## Practice

What two adjectives describe a function which causes no side-effects and has a valid output for every input?

???

- Pure & Total
- Pure & Partial
- Partial & Pure
- Immutable & Total
- Partial & Total


---

## Revision

Is Python considered a functional language?

???

- No
- Yes
- Sometimes
 
