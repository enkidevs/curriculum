---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Is Python a functional
    language?](https://stackabuse.com/functional-programming-in-python/#:~:text=Python%20is%20not%20a%20functional,for%20the%20task%20at%20hand.){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Is Python a Functional Language?


---

## Content

Previously, we've made references to different programming languages. Some we've referred to as *pure* functional languages, such as Haskell. This begs the question: *"Is Python a functional language?"*

In short: **No**. Python is not considered a functional programming language. This is due to a family of reasons that disqualify the language, mainly due to many of Python's standard data structures being mutable and many of the basic idioms and conventions being inherently impure due to the standard library not being in a functional style.

Python was not originally designed to support functional programming, and these changes were added around 1993, two years or so after its release.[1] However, over the years more support and demand for functional programming abilities have meant that the Python `functools` module is moderately popular and well-used, especially as an easy introduction to functional programming concepts.


---

## Practice

Is Python considered a functional language?

???

- No
- Yes
- Sometimes


---

## Footnotes

[1:How Python got Functional]
Python only acquired the functional methods `reduce()` `filter()` and `map()` (allegedly) after a Lisp hacker who missed them from that language submitted working patches. Additionally, Guido van van Rossum, the creator of Python also known as the BDFL (Benevolent Dictator For Life) once called for their removal from Python 3 in 2005. While the foundations may have been rocky, the `functools` module is well-used and presents an easy way for anyone new to functional programming concepts to introduce themselves to the idea before jumping to more functionally-focused languages such as Haskell.
 
