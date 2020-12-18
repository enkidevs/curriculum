name: Functional Programming

description: Why Python is a functional language and how to take advantage of it.

sections:
  '0':
    - arrays-i
    - arrays-ii
    - comprehension
    - decorators
    - functional-programming
    - functional-programming-ii
    - generators
    - python-immutability
    - iterators

standards:
  contrast-functional-imperative:
    name: Contrast Functional Programming with Imperative Programming
    description: This standard deals with one's ability to distinguish imperative code from functional code, recognize the differences in structure and style, and determine functional programming's suitability for a given purpose.
    objectives:
      0: Distinguish between imperative and functional code
      1: Evaluate the suitability of a functional style of programming for a given task
      2: Refactor iterative code into functional code
  pure-functions:
    name: Write pure functions in Python
    description: This standard deals with the ability to identify and purposefully write pure functions.
    objectives:
      0: Analyze a function to determine whether side effects will occur
      1: Distinguish between pure and impure functions
      2: Write pure functions in Python
  functional-programming-features:
    name: Identify and use Python’s functional programming features
    description: This standard deals with one's ability to use the features of python3 (syntax, data structures, etc) that support a functional programming style.
    objectives:
      0: Use python's library of built-in functions to transform data using the iterator protocol
      1: Use list and dictionary comprehensions to transform data in a functional style
      2: Use decorators to modularize code
      3: Use decorators to handle errors in a data pipeline
      4: Use generators to generate iterators
  use-comprehensions:
    name: Use comprehensions to transform data
    description: This standard deals with list and dictionary comprehensions
    objectives:
      0: Read python comprehensions and predict the result
      1: Read complex or nested comprehension statements and predict the result
      2: Use list comprehensions to iterate over and transform a list of data
      3: Use dictionary comprehensions to iterate over and transform a dictionary of data
      4: Use set comprehensions to iterate over and transform a set of data
      5: Use nested comprehensions to transform multidimensional data
  libraries-functional-programming:
    name: Use libraries to provide extended support for functional programming
    description: This standard deals with the use of ecosystem tools to support functional programming.
    objectives:
      0: Recognize functional programming features not native to python
      1: Use a library to provide support for immutable data structures
      2: Use a library to provide support for Functors, such as Applicative Functors and Monads
