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

  - '[map, filter, and reduce](http://www.bogotobogo.com/python/python_fncs_map_filter_reduce.php){website}'
  - '[Lambda, filter, reduce and map](http://www.python-course.eu/lambda.php){website}'
  - '[9 Python Filter Function and List Comprehension Examples](http://www.thegeekstuff.com/2014/05/python-filter-and-list){website}'


---

# The `filter` Built-in Function

---
## Content

Together with the other built-in functions `map`[1] and `reduce`, `filter` allows us to take a functional approach to programming in Python. As the name might suggest, `filter` takes a function and an iterable object and returns only the elements in the iterable object for which the given function returns `true`[2]. `filter` takes the general form:

```python
filter(function, iterable)
```

`filter` always returns a list, *unless the iterable object passed in is a string or a tuple*; in this case, the return type reflects the input type. If we don't provide a function to `filter`, such as by putting `None` in the place of the function, `filter` assumes the identity function.

It is important to remember that `filter` evaluates a boolean value, so it interprets the results of the identity function as such. Therefore&mdash;*since Python evaluates `0`, `None` and the empty string as `False`*&mdash;a `filter` with `None` as its function will not return these objects if they occur in the iterable object.

For example, consider the following code fragment:

```python
prices = (1.29, 1.99, 2.30, 2.99, 1.80)

def lessThanTwo(element):
  return element < 2

filter(lessThanTwo, prices)
```

Perhaps we are trying to refine the result of some search on a price-comparison site. In the code above, we define a list of `float`s, our prices, and define a function called `lessThanTwo`, which returns the boolean result of comparing the input element to the number two.

Finally, we apply `filter` on the two and receive back only those prices less than two, since these elements were the only ones to return `True` when passed to the `lessThanTwo` function. The result is:

```python
(1.29, 1.99, 1.8)
```

In many ways, the `filter` function produces very similar results to a for loop in imperative style, but filter is more legible, built-in and generally faster.

Finally, consider that we can use `filter` on any object and function we define, allowing us to perform complicated sorting actions on collections of complex objects of our design, and how useful the `filter` function therefore can be.

---
## Practice

Let's practice filtering through lists of more complex objects, such as tuples. `filter` lets us use a function to check multiple conditions in one sweep of the list. What is the result of the following code snippet's execution?

```python
customers =
  [('Jack', 'jack@corporate.com', True),
  ('Liz', 'liz@example.com', True),
  ('Sam', 'sam@corporate.com', True),
  ('Jess', 'jess@corporate.com', False)]

def special_function(customer):
  if len(customer[1]) > 0:
    return 'corporate.com' in customer[1]
    and customer[2]
  return False

print(filter(special_function, customers))

???
```


* The 3-tuples of customers where the associated boolean is `True` and the email includes the substring `'corporate.com'`.
* The names of customers where their associated boolean is `True` and the email includes the substring `'corporate.com'`.
* The 3-tuples of customers whose names are longer than zero characters.
* The 3-tuples of customers where their associated boolean is `True` or the email includes the substring `'corporate.com'`.
* The 3-tuples of customers where their associated boolean is not `True` and the email does not include the substring `'corporate.com'`.

---
## Revision

What is the printed result of the following code execution?

```python
numbers = [-3, -2, -1, 0, 1, 2, 3]
def mystery_function(element):
  return element < 0
print(filter(mystery_function, numbers))
```

???


* `[-3, -2, -1]`
* `[-1, -2, -3]`
* `[1, 2, 3]`

---
## Footnotes
[1:map]
*Used alongside the `map` function, filter can be very useful in applying a complex operation on a iterable collection of data, and picking out the members of the collection that meet a certain criteria after the `map` has been applied.*

[2:true]
*There is also a complementary function `itertools.filterfalse()` which only returns elements of the iterable object if the function returns false on them. Alternatively, you could negate the return value of the function passed to `filter` to achieve the same result.*
