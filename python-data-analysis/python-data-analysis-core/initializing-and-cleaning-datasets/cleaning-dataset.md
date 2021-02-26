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

# Initializing & Cleaning a Dataset 

---
## Content

Using the dataset from the previous insight[1], we will show you how to clean it up before we start the analysis.

First off, when we import a dataset, we can use the `head()` or `tail()` functions to check the top or bottom 5 rows, respectively.

> You can also pass a number to `head()` and `tail()` to overwrite the default value of `5`.

Using `importedRawData.head()` we get:

![df.head](https://img.enkipro.com/dd122d46f56ca9b68d0a416aeea42ec0.png)

Using `importedRawData.tail()` we get:

![df.tail](https://img.enkipro.com/54954e701a8fd2e3715788975ef01223.png)

This is useful to know right away if your dataset has loaded or not.

As you can see, there are a lot of columns in this dataset.

To check the total number of rows and columns in your dataset, add `.shape` to your DataFrame.

![dataframe-dot-shape](https://img.enkipro.com/ef84e063e9b77b20f3a069b54c8cd437.png)

This dataset has 6234 rows and 12 columns.

Rows start from 0 instead of 1. This is why the last columns `show_id` is 6233 instead of 6234.

> We will remove the columns we don't need for our analysis and leave the ones we will use in this workout.

To determine which columns we will remove, let's first check which cells have missing data.

To check which data is missing run the `.isnull()` command:

![raw-is-null](https://img.enkipro.com/f21cee53d181046c10b517cf0bf4c9a2.png)

This will give us a table with `True` / `False` values. `True` meaning empty.

> We will continue cleaning this data set in the next insight.


---
## Practice

??? is used to check if cells are empty or not?

- isnull()
- isnan()
- exists()
- isempty()


---
## Revision

Attach 2 functions to the `cars` `DataFrame` to check and count all the missing values across all rows and columns.

```py
cars.???.???
```

- `isnull()`
- `sum()`
- `calculate()`
- `count`
- `isempty()`


---
## Footnotes

[1:Previous Dataset]
```python
import pandas as pd

importedData = pd.read_csv('netflix_titles.csv')
```