---
author: stefkn
type: normal
category: must-know
links:
  - >-
    [Python
    max()](https://www.programiz.com/python-programming/methods/built-in/max){website}
  - >-
    [Python 3.3
    Documentation](https://docs.python.org/3.3/library/functions.html#max){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Advanced use of max


---

## Content

There are a number of special ways we can use `max`: 

- We can pass in multiple iterable objects to `max` at the same time. The function will compare the first elements of each list:
```python
print(max([1,10], [4,3]))
# Returns: [4,3]
```

- We can pass in custom functions for the comparison[1]. For instance we can compare the length of two lists:

```python
num1 = [1200, 110000, 90, 9012]
num2 = [12, 12, 12, 30, 30, 90]
print(max(num1, num2, key=len))
# result = [12, 12, 12, 30, 30, 90]
```


- We can also assign a `default` value to return if the given iterable turns out to be empty:
```python
print(max([], default=25))
# Result: 25
```

---

## Practice

Let's say we have some queues of customers being served pizza. We want to know which queue will be the fastest.

Queues are lists of groups of 1 or more people to be served.

We need to consider size (number of groups of people in the queue), but also take into account the total number of people in the queue. (I.E. we believe that a queue of 5 one-person groups, [1, 1, 1, 1, 1], will take much longer to serve than a queue of a 1 five-person group)

Try to fill in the blanks to find the shortest queue by finding the maximum key, where the key is the sum of all people queueing divided by the length of the queue.

```python
queue1 = [3, 4, 6, 2, 4, 3]
queue2 = [3, 2, 6, 9, 4, 2]
print(???(queue1,
          queue2,
          key=lambda x: ???/???))
```

- max
- sum(x)
- len(x)
- queue
- map(x)
- min(x)


---

## Revision

What is the result of executing the following code snippet in Python 3?

```python
list3 = [1, 2, 'abc', 'xyz', 3, 4, 'zzz']
print(max(list3))
```

???

- TypeError
- 'xyz'
- 'zzz'
- 4


---

## Footnotes

[1:Key]
*This is exactly the same as the way keys are used in other built-in functions such as `sort` etc. For more information see the lesson on the `sorted` and `sort` functions.*
 
