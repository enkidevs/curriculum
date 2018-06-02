---
author: SebaRaba

levels:

  - beginner

  - basic

type: normal

category: feature


links:

  - '[More on functional programming](https://codesachin.wordpress.com/2016/04/03/a-practical-introduction-to-functional-programming-for-python-coders/){website}'


---

# What is functional programming

---

## Content

In computer science, _functional programming_ is a **paradigm**[1] that is based on the evaluation of _mathematical functions_. These functions are called **pure functions** and they have no _side effects_, meaning there are no I/O operations, no state changes and no database interactions. In other words, the output value of a function depends only on the input give ( arguments that are passed to the function ).

The easiest way to define a **pure function** in Python is using a _lambda operator_. Consider the following example:

```
cube_func = lambda x: x**3
print(cube_func(2))

# Output: 8
```

This is a way to define functions in a one-line fashion. Functions defined with the _lambda operator_ can be called _anonymous functions_ as well. Consider the following example:

```
foo = [1, 2, 3, 4, 5, 6]
print(list(filter(
      lambda x: x % 2 == 0,foo))
      )

# Output: [2, 4, 6]
```

We defined a simple list and used the standard function `filter` to obtain a new list containing only even elements in `foo`.
The `filter` function requires two arguments: a function and a list. The first parameter here is an _anonymous function_, meaning a function that we defined on the spot, which wasn't assigned any name.

Another interesting feature is that functions are considered _first-class citizens_, which means that they can be treated like any other object. We can assign them variables, they can be passed as arguments, we can even set them to be the _return value_ of another function.

Consider the following examples:

```
# Basic function defined to be
# the return value of another one:
def square(x): return x ** 2

# Assigning square function
# to a variable:
calc_square = square

# Passing a function as an argument:
def calculate(x, func):
  return func(x)

result = calculate(2, calc_square)
print(result)
# Output: 4
```

---

## Practice

Fill the gaps such that the code will run with no errors:

```
sum = ??? x, y: x + y
multiply = lambda a, b: a * b

result = ???(sum(2, 3),4)
???(result)

# Output: ???
```

- lambda
- multiply
- print
- 20
- try
- 18
- sum
- filter

---

## Revision

Can you predict the output?

```
foo = list(range(1,10))

result = list(
       filter(
       lambda x: x / 2 == 1 ,foo
       ))

print(result)
```

???

- [2]
- [2, 4, 6, 8]
- [2, 4, 6, 8, 10]

---

## Footnotes

[1: paradigm]
A programming paradigm is a "style" of doing something. Basically they define a way to classify programming languages based on their features.
