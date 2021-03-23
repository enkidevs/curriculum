---
author: emmab
tags:
  - introduction
type: normal
category: must-know
links:
  - >-
    [Filtering
    Data](https://cmdlinetips.com/2018/02/how-to-subset-pandas-dataframe-based-on-values-of-a-column/){website}
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

---

### Filtering

We can filter **columns** by column name:

```py
products_data['product_name']
```

And we can filter our data by multiple columns at once:

```py
products_data[['product_name', 'price', 'category']]
```

We can filter **rows** by their index:

```py
listings_df[5:10]
```

Or by using a boolean operator:

```py
products_data['price'] < 10
```

Check out the **Learn More** link to discover the many useful ways you can filter data using the pandas library!

### Data Manipulation

We can show how many nulls are found in each column with `isnull()`:

```py
products_data.isnull().sum()
```

We can use `drop()` to drop some columns we don't want for our analysis:

```py
columns_to_drop = ['id', 'product_number', 'last_review']
products_data.drop(columns_to_drop, axis="columns", inplace=True)
```

We can use `fillna()` to replace NaN with another value:

```py
products_data.fillna({'reviews_per_month': 0}, inplace=True)
```

There are *so many* useful Python and Pandas functions that you can use to analyze your data.

Using Python, you can quickly answer questions like - What are the 10 most reviewed products? What are the best selling products in New York?


---

## Practice

Complete the following code to remove the `date_of_birth` column from our `students` dataset:

```py
students.???('date_of_birth, axis:"columns", inplace=True)
```

- drop
- hide
- remove
- delete


---

## Revision

Complete the following code to check how many null values there are in the students data set:

```py
students.???().sum()
```

- isnull
- fillna
- null
- countnull
