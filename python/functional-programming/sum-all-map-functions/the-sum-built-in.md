---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Python Docs -
    sum](https://docs.python.org/3.3/library/functions.html#sum){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# The sum Function


---

## Content

The `sum` built-in allows us to find the total of an iterable collection of numbers. It takes the general form:

```python
sum(iterable, start)
```

Where `start` is an optional argument that lets us start the sum from a specific value. 

For example: [1]

```python
numbers = [1, 4, 2.5, 2.5]
print(sum(numbers))
# result is 10.0
print(sum(numbers, 3))
# result is 13.0 (3 + 10.0) 
```

---

## Practice

What is the output of the following sum operation?

```python
letters = ['a', 'b', 'c']
print(sum(letters))
```

???

- TypeError: unsupported operand type(s) for +: 'int' and 'str'
- abc
- `['a', 'b', 'c']`


---

## Revision

Let's imagine we are comparing the bill totals for two customers. Fill in the blanks in the code below to print out the sum of the bill with the greatest total, *after adding the mandatory service charge of $8*.

```python
bill1 = [2.5, 3, 16, 18]
bill2 = [4.5, 4.5, 18, 18, 3.99]

sum1 = ???
sum2 = ???

print(sum1 if ??? > ??? else sum2)
```

- sum(bill1, 8)
- sum(bill2, 8)
- sum1
- sum2
- sum(bill1, bill2)
- sum(bill2, bill1)


---

## Footnotes
[1: Why is the result a float?]
The result of our `sum` is of type `float` because Python automatically converts `float` and `int` addition results to `float`s to avoid loss of precision. 

```py
2 + 3.0 # 5.0
```

This is not specific to `sum` but happens whenever we do arithmetic operations on mixed number types.
