---
author: Stefan-Stojanovic

type: normal

category: how to

---

# Series Attributes

---
## Content

The `Series` array has 13 attributes.

These attributes are appended to the series to get the desired result.

> Since `pandas` was built on `numpy` there will be some attributes you recognize from the `numpy` attribute list.

| Attribute                    | Explanation                                                                  |
|------------------------------|------------------------------------------------------------------------------|
| .array                       | returns an array of values taken from the series.                            |
| .values                      | returns the series as an `ndarray` or `ndarray` like depending on the dtype. |
| .dtype                       | returns the dtype object.                                                    |
| .shape                       | returns a tuple of the shape.                                                |
| .nbytes                      | returns the number of bytes.                                                 |
| .ndim                        | returns the number of dimensions.                                            |
| .size                        | returns the number of elements.                                              |
| .T                           | returns the transpose.                                                       |
| .memory_usage([index, deep]) | returns the memory usage of the Series.                                      |
| .hasnans                     | Returns if the Series has `nans`                                             |
| .empty                       | Checks if the DataFrame is empty                                             |
| .dtypes                      | Returns the dtype object.                                                    |
| .name                        | Return the name of the Series.                                               |

> `ndarray` is a `numpy` array.

> `.dtype` is a numpy attribute while `.dtypes` is a `pandas` attribute.

Using the dictionary example from the last insight[1] we will apply some of these attributes.

```python
secondSeries.array
```

The `.array` attribute gives this result:

```python
<PandasArray>
[1, 2, 3]
Length: 3, dtype: int64
```

The `.size` attribute gives this result:

```python
3
```

The `.nasnans` gives this result:
```python
False
```

And the `.shape` gives this result:
```python
(3,)
```

---
## Practice

Fill in the code to create a `Series` called "`mySeries`" from a dictionary.

```python
someDict = ???

mySeries = ???(someDict)
```

- {'Name' : "Juan", 'Age' : 46}
- pd.Series
- ['Name' : "Juan", 'Age' : 46]
- pd.series.


---
## Revision

Return an array of values from the `mySeries` Series.

```Python
mySeries???
```

- .array
- (array)
- `-array`
- .array(values)

---
## Footnotes

[1:Dictionary Example]

A `Series` from a `dict`:
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