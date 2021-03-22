---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [A gentle introduction to
    itertools](http://jmduke.com/posts/a-gentle-introduction-to-itertools/){website}
  - >-
    [A Demo of APL from
    1975](https://www.youtube.com/watch?v=_DTpQ4Kk2wA){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# The itertools Module


---

## Content

`itertools` implements a number of fast, memory efficient iterator building blocks inspired by languages such as APL, Haskell and SML[1]. `itertools` provides a host of useful methods for working with iterable objects which together form what is called an "iterator algebra" because they can be used in combination or alone to construct specialized iterator tools quickly and succinctly in pure Python.

`itertools` contains around 20 individual methods, without considering the multitude of ways to combine them. Therefore, we won't be covering every method. Instead, we're going to cover a few of the most useful and well-known methods from the module.

You might already remember `count()` which, given a starting number and a step (an increment to increase by with each iteration) it will continue to infinitely count up or down, returning each value from each iteration. Along with `cycle()` and `repeat()`, these methods make up the three infinite iterators found in `itertools`.

`cycle()` simply creates an infinite list from a finite one by returning to the beginning once the iteration reaches the end. `repeat()` just creates a list of length n (infinite if not provided) where every element in the series is the element given as an argument, duplicated.


---

## Practice

The `cycle()` method creates an ??? list from a ??? one.

The `repeat()` method creates a list of length `n`, where each element is the ??? of the argument.

- infinite
- finite
- duplicate
- original
- new


---

## Footnotes

[1:APL, Haskell and SML]
Haskell is a widely-used, purely functional, lazy programming language. Because of its purely functional nature, mutations of variables or data structures and I/O are essentially not permitted at all. Therefore it is common to use iteration tools to carry out operations on data where the original object is not modified but a new copy is made with the desired changes already applied to it. Similar mechanics can be found in SML and the other ML family languages such as OCaml (they are not pure, but are still functional) and even in very old languages such as APL. It is from this paradigm that the `itertools` methods get their inspiration.

For an interesting demo of APL featuring a vintage typewriter REPL (Read-Eval-Print Loop) from 1975, see the link in the 'Learn More' section.
 
