---
author: Stefan-Stojanovic

type: normal

category: how to

---

# pandas 1-D Series

---
## Content

With `pandas` you can create a one-dimensional array called `Series`.

These one-dimensional arrays can be labeled and can hold any data type(strings, objects, integers, etc.).

You can create a `Series` from a list, dictionary, array, and more.

> These 1-D arrays are homogenous. You cannot have a string and an int in the same Series.

Here is a series from a `numpy` array:
```python
someNumpyArray = np.array([1, 2, 3, 4, 5])

firstSeries = pd.Series(someNumpyArray)
```

When we print `firstSeries`
```python
print(firstSeries)
```

we get the output:

```python
0    1
1    2
2    3
3    4
4    5
dtype: int32
```

Here is another example of a `Series` from a `dict`:
```python
someDict = {'a' : 1, 'b' : 2, 'c' : 3}

secondSeries = pd.Series(someDict)
print(secondSeries)
```

The output of this series is:
```Python
a    1
b    2
c    3
dtype: int64
```

---
## Practice

??? are 1-Dimensional `pandas` arrays that can hold ???.

- Series
- any data type
- only strings and integers
- only dictionaries and integers
- Lists