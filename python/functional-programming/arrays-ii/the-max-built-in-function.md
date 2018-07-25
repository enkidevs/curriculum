---
author: stefkn

levels:

  - beginner

  - basic

  - medium

type: normal

category: must-know
aspects:
  - introduction
  - workout
  - deep
standards:

  python.data-structures-uses.0: 10
  python.data-structures-uses.1: 10
  python.native-types-operations.3: 10
  python.use-iteration-protocol.1: 10

links:

  - '[Python max()](https://www.programiz.com/python-programming/methods/built-in/max){website}'
  - '[Python 3.3 Documentation](https://docs.python.org/3.3/library/functions.html#max){website}'


---

# The `max` Built-in Function

---
## Content

The `max` function returns the largest item in an iterable object, or, the largest of two or more parameters given to it. The general syntax follows the form:

```python
max(iterable, *iterables [,key, default])
# or
max(arg1, arg2, *args [, key])
```

where `*iterables` and `*args` denotes zero or more iterable objects and additional arguments respectively, and the additional parts in square brackets are *optional*. Let's examine the first form first:

- `iterable` is an iterable object from which to select the largest item. At least one must be supplied in this form.
- `*iterables` denotes additional iterable objects which can be passed to `max` at the same time. They will also be examined and the largest from all given iterables will be found.
- `key` is the function for the comparison[1], i.e. how we determine something as being larger than another. Comparing the return value of this function when applied to each element being compared is what will determine which is the largest. *This is optional, and by default it is the identity function.*
- `default` is the default value to return if the given iterable turns out to be empty. This is also *optional*.

Now let's look at the second form,

```python
max(arg1, arg2, *args [, key])
```

- `arg1` and `arg2` are mandatory, since we need at least two objects to compare. They may be numbers, strings, or of any other type.
- `*args` denotes that we can pass as many argument objects as we would like at once to `max`.
- `key` remains the same as above, and is *optional*.

In the case that there are more than one maximal items in the given input, `max` returns the first one encountered. Consider the following code examples:

```python
# using max(arg1, arg2, *args)
max(1, 1, 1, 5, 2)
# result = 5

# using max(iterable)
num = [1, 1, 1, 1, 3, 2, 10]
max(num)
# result = 10
```

Using the key argument, however, we can use `max` in more interesting and useful ways. For example, we can specify the key to be a custom or built-in function, such as one that checks the size of objects, `len`.

```python
num1 = [1200, 110000, 90, 9012]
num2 = [12, 12, 12, 30, 30, 90]
print(max(num1, num2, key=len))
# result = [12, 12, 12, 30, 30, 90]
```

---
## Practice

Let's say we have some queues of customers being served pizza. We want to know which queue will be the fastest.

Queues are lists of groups of 1 or more people to be served.

We need to consider size (number of groups of people in the queue), but also take into account the total number of people in the queue. (I.E. we believe that a queue of 5 one-person groups, [1, 1, 1, 1, 1], will take much longer to serve than a queue of a 1 five-person group, [5].)

Try to fill in the blanks to find the shortest queue by finding the maximum key, where the key is the sum of all people queueing divided by the length of the queue.

```python
queue1 = [3, 4, 6, 2, 4, 3]
queue2 = [3, 2, 6, 9, 4, 2]
print(???(queue1,
          queue2,
          key=lambda x: ???/???))
```


* max
* sum(x)
* len(x)
* queue
* map(x)
* min(x)

---
## Revision

What is the result of executing the following code snippet in Python 3?

```python
list3 = [1, 2, 'abc', 'xyz', 3, 4, 'zzz']
print(max(list3))
```

???


* TypeError
* 'xyz'
* 'zzz'
* 4

---
## Footnotes
[1:Key]
*This is exactly the same as the way keys are used in other built-in functions such as `sort` etc. For more information see the lesson on the `sorted` and `sort` functions.*
