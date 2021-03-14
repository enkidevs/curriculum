---
author: Stefan-Stojanovic

type: normal

category: how-to

practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# Series & DataFrames

---
## Content

With `pandas` you can create a one-dimensional array called `Series`.

These one-dimensional arrays can be labeled and can hold any data type(`strings`, `objects`, `integers`, etc.). 

However, they are homogeneous. You cannot have a `string` and an `int` in the same `Series`.

You can create a `Series` from a `list`, `dictionary`, `array`, and more.

Here is a simple series from an array:
```python
# import pandas with the alias pd
import pandas as pd

# create a Series
firstSeries = pd.Series([21,24,23])
```

When we print `firstSeries` we get this output:
```plain-text
0    21
1    24
2    23
dtype: int64
```

> ❗ It is possible to create a `Series` from more than one data type thanks to type coercion[1].

### DataFrames

`DataFrames` are `pandas` two-dimensional arrays. They are aligned in tabular format. They have labels and are created with rows and columns.

Just like `Series`, `DataFrames` can be created from any data type.

However, unlike `Series`, `DataFrames` are heterogeneous. You can have more than one data type in a `DataFrame`.

Here is how to create a `DataFrame` from two different `Series`:

```python
# Create two Series
firstSeries = pd.Series([21,24,23])
secondSeries = pd.Series(["Stefan", "Marcus", "Emma"])

# Combine the series into a
# Dictonary with column identifiers
f = {"Name" : secondSeries, "Age" : firstSeries}

# Create a DataFrame from the above Dictonary
df = pd.DataFrame(f)
```

When we print `df` we get:

| id |   Name | Age |
|---:|-------:|----:|
| 0  | Stefan |  21 |
| 1  | Marcus |  24 |
| 2  |   Emma |  23 |

Both `DataFrame`s and `Series` have an index. By default, this index goes from 0 to the length of the array.

> A singular column within any `DataFrame` is defined as a `Series`. So, if a `DataFrame` has 10 columns, those 10 columns are all individual `Series`.

> We will show you different ways of how we will use these arrays to import datasets and manipulate them in the next few insights.

---

## Practice

??? are 1-Dimensional `pandas` arrays that can hold ???.

??? are 2-Dimensional `pandas` arrays that can hold any data type.

- Series
- any data type
- DataFrames
- only strings and integers
- only dictionaries and integers
- Lists

---

## Revision

Create a `Series` from a `numpy` array.

```python
someArray = np.???([1, 2, 3])

someSeries = pd.???(???)
```

- array
- Series
- someArray
- series
- someSeries
- Array

---
## Footnotes

[1:Coersion]

In Python, coercion is automatic. It is when the language implicitly converts an object to a different type to avoid errors.

For instance, you can add a float (3.1) and an int (2) without any errors.
```python
3.1 + 2

# 5.1
```

The python interpreter figures out that one is a `float` and the other is an `int`. It converts the `int` into a `float` and then it adds them up.

As for the `Series`, take this example:

```python
s = pd.Series([1, 'hello', True])
```

It would compile and run without any problems. This is because the `dtype` of this Series is coerced into an "object".

If we call  `s` we would get:
```python
0        1
1    hello
2     True
dtype: object
```

Which shows its `dtype` is an `object`.
