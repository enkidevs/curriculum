---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know


links:

  - '[A gentle introduction to itertools](http://jmduke.com/posts/a-gentle-introduction-to-itertools/){website}'
  - '[A Demo of APL from 1975](https://www.youtube.com/watch?v=_DTpQ4Kk2wA){website}'


---

# The `itertools` Module

---
## Content

`itertools` implements a number of fast, memory efficient iterator building blocks inspired by languages such as APL, Haskell and SML[1]. `itertools` provides a host of useful methods for working with iterable objects which together form what is called an "iterator algebra" because they can be used in combination or alone to construct specialized iterator tools quickly and succinctly in pure Python.

`itertools` contains around 20 individual methods, without considering the multitude of ways to combine them. Therefore, we won't be covering every method in this insight. Instead, we're going to cover a few of the most useful and well-known methods from the module.

You might already remember `count()` which, given a starting number and a step (an increment to increase by with each iteration) it will continue to infinitely count up or down, returning each value from each iteration. Along with `cycle()` and `repeat()`, these methods make up the three infinite iterators found in `itertools`.

`cycle()` simply creates an infinite list from a finite one by returning to the beginning once the iteration reaches the end. `repeat()` just creates a list of length n (infinite if not provided) where every element in the series is the element given as an argument, duplicated.

More interesting are the iterators which terminate on the shortest input sequence, such as `chain()`, `filterfalse()` and `compress()`.

Let's start with `chain()`. This method allows us to "glue" the end of one sequence to the start of another, chaining them together. This can be done for multiple sequences at a time. Take a look at this example:

```python
import itertools;

letters = ['a', 'b', 'c', 'd']
numbers = [1, 2, 3, 4]

print(
  list(
    itertools.chain(letters, numbers)))

# Result = ['a', 'b', 'c', 'd', 1, 2, 3, 4]
```

Next, `filterfalse` iterates through a collection of elements, and, given a boolean expression to evaluate with the each element, returns a collection which only contains the elements where the expression evaluated to false.

```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8]

print(
  list(
    itertools.filterfalse(
      lambda x: 2 < x < 7, numbers)))

# Result = [1, 2, 7, 8]
```

Finally, `compress()`, which takes two collections, a and b, and returns only the elements in a where the corresponding element in b evaluates to true.

```python
numbers = [1, 2, 3, 4, 5, 6, 7, 8]
boolean = [1, 0, 1, 0, 1, 0, 1, 0]

print(
  list(
    itertools.compress(numbers, boolean)))

# Result: [1, 3, 5, 7]
```

---
## Practice

Let's say we have three lists. The first is a list of prices for items on an online shop. The second is a list of proposed discounts, to be subtracted from those prices. Finally, the third list is a list of booleans which indicate which products (assume one product per index) are included in the sale.

Complete the code below to print a list of the original prices and a list of those same prices with the discount applied.

```python
import itertools;

prices = [120, 300, 90, 200, 60]
discounts = [-30, -100, -35, -85, -15]
isInSale = [1, 0, 1, 1, 1]
salePrices = []

discountIterator =
iter(
  itertools.???(
    discounts, isInSale))

fullPricesInSale =
itertools.compress(prices, isInSale)

def f(x):
  price = x + next(discountIterator)
  salePrices.append(price)
  return(price <= 0)

print(
  list(
    itertools.???(
      lambda x: f(x), fullPricesInSale)))

print(
  list(salePrices))
```


* `compress`
* `filterfalse`
* `cycle`
* `chain`
* `izip`
* `islice`

---
## Revision

What is the result of the following code execution?

```python
import itertools;

names = ['Tom', 'Sadiq', 'Lars',
          'Lee', 'Jean']
boolean = [1, 0, 1, 1, 0]

print(
  list(
    itertools.islice(
      itertools.cycle(
        itertools.compress(
          names, boolean)), 0, 6)))
```

???


* `['Tom', 'Lars', 'Lee', 'Tom', 'Lars', 'Lee']`
* `['Tom', 'Sadiq', 'Lars', 'Lee', 'Jean', 'Tom']`
* `['Sadiq', 'Jean', 'Sadiq', 'Jean', 'Sadiq', 'Jean']`
* `<itertools.islice object at 0x????????>`

---
## Footnotes
[1:APL, Haskell and SML]
Haskell is a widely-used, purely functional, lazy programming language. Because of its purely functional nature, mutations of variables or data structures and I/O are essentially not permitted at all. Therefore it is common to use iteration tools to carry out operations on data where the original object is not modified but a new copy is made with the desired changes already applied to it. Similar mechanics can be found in SML and the other ML family languages such as OCaml (they are not pure, but are still functional) and even in very old languages such as APL. It is from this paradigm that the `itertools` methods get their inspiration.

For an interesting demo of APL featuring a vintage typewriter REPL (Read-Eval-Print Loop) from 1975, see the link in the 'Learn More' section.
 
