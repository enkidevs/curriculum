---
author: Stefan-Stojanovic

type: normal

category: how to

---

# Randomly Valued Arrays

---
## Content

Numpy offers functions to help you create randomly valued arrays.

Here is an example of a randomly valued 1-D integer array:
```python
someArray = np.random.randint(10, size=7)
print(someArray)
```

The output of the print function is:
```python
[0 0 4 9 2 5 7]
```

In the example above, we have created a variable called "someArray".

Then we assigned the `np.random.randint` function along with some values.

The syntax for this function is:
```python
numpy.random.randint(
  low, 
  high=None, 
  size=None, 
  dtype=int
)
```

This function returns a random set of integers from `low` to `high`.

If there are no `high` values, like in our `someArray` example, then the randomly generated numbers are chosen from 0-low, or in our case, from 0-10.

The `size` is the number of integers to insert in the array. The default value is `none`.

Lastly, the `dtype` is the type of the array. The default value for this is `int`.

All values except the `low` one are optional.

---
## Practice

Create a randomly valued `numpy` array called `randomArray` with a low of `10` and a size of `(3, 5)`.

```python
randomArray = ???.random.randint(
  ???, 
  ???
)
```

- np
- 10
- size = (3, 5)
- pd
- size = (3 - 5)

---
## Revision

It is possible to generate randomly valued arrays with `numpy`?

???

- True
- False
