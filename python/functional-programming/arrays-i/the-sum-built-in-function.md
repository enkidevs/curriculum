---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal
aspects:
  - introduction
  - workout
  - deep
category: must-know
standards:
  python.use-iteration-protocol.1: 10

links:

  - '[Python Docs - sum](https://docs.python.org/3.3/library/functions.html#sum){website}'


---

# The `sum` Built-in Function

---
## Content

`sum` allows us to find the total of a iterable collection of numbers. It takes the general form:

```python
sum(iterable [, start])
```

Where `start` is an optional argument which lets us specify what value the sum should start from; by default it is 0. The elements in `iterable` are usually numbers, and `sum` will throw type errors if they are not compatible with the operand `+` which is used on all members of the `iterable` object to total them up. There are a number of ways to achieve the same result as a `sum` operation, but sum will usually be the most efficient and legible way to go about the task.[1]

```python
numbers = [1, 4, 2.5, 2.5]
print(sum(numbers))
# result is 10.0
print(sum(numbers, 10))
# result is 20.0
```

*N.B. Notice how the result of our `sum` is of type `float` as opposed to `int` since Python automatically converts `float` and `int` addition results to `float`s in order to avoid loss of precision. This is not specific to `sum` but happens whenever we do arithmetic operations on mixed number types.*

---
## Practice

What is the output of the following sum operation?

```python
letters = ['a', 'b', 'c']
print(sum(letters))
```

???


* TypeError: unsupported operand type(s) for +: 'int' and 'str'
* abc
* ['a', 'b', 'c']

---
## Revision

Let's imagine we are comparing the bill totals for two customers. Fill in the blanks in the code below to return the sum of the bill with the greatest total, *after adding the mandatory service charge of $8*.

```python
bill1 = [2.5, 3, 16, 18]
bill2 = [4.5, 4.5, 18, 18, 3.99]

print(bill1 if ??? > ??? else bill2)
```


* sum(bill1, 8)
* sum(bill2, 8)
* sum(bill1)
* sum(bill2)
* sum(bill1, bill2)
* sum(bill2, bill1)

---
## Footnotes
[1:Alternatives to `sum`]
*An example of a rare case where an alternative method is superior to `sum` is when adding floating point values. When precision is important, it is better to use `math.fsum()` which deliberately avoids loss of precision. For more information, see the Python Docs in the Learn More section.*
