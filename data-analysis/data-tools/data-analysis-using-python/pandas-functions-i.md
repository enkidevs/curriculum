---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Pandas
    Functions](https://pandas.pydata.org/pandas-docs/stable/reference/general_functions.html){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Pandas Functions I


---

## Content

Once you've set up your Jupyter workspace and imported some libraries, you're nearly ready to explore some data.

First, we need to have access to our data!

There are several ways to do this, depending on where your data is stored. First, we will show you how to access **CSV data** using `pandas`.

Imagine we have a **CSV** file on our laptop filled with data on all of our products.

You can create a DataFrame[1] variable, *"products_data"*, using the `read_csv` function.

```python
products_data = pd.read_csv(<INSERT_PATH_TO_CSV>)
```

> 💡 Remember that **pd** is our pandas alias. So we're calling the `read_csv` function on the pandas library. The CSV path could be a local file directory or a URL.

Now we have some data, we're ready to go.

The `head()` function gives us *the top n rows of our data*. Running this code returns a table of the first 10 rows:

```python
products_data.head(10)
```

The `unique()` function returns the unique values of any column we choose to use. Running this code returns a list of unique product categories:

```py
products_data['category'].unique()
```

The `shape` function returns the number of rows and columns as a tuple (number of rows, number of columns).

```py
products_data.shape

# (891, 12)
```

Check out the **Learn More** link to discover other useful functions like `tail()`, `columns`, `dtypes` and others!


---

## Practice

How could you quickly check the number of rows and columns in a data set?

```py
data_set.???
```

- shape
- rows_and_columns
- dimensions
- head


---

## Revision

How can you return the first 5 rows of data?

```py
data_set.???(???)
```

- head
- 5
- first
- take


---

## Footnotes

[1:DataFrame]

DataFrame is a 2-dimensional labeled data structure with columns of potentially different types. You can think of it like a spreadsheet or SQL table, or a dict of Series objects. It is generally the most commonly used pandas object.
