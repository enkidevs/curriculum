---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - >-
    [to_frame before reset_index](https://stackoverflow.com/questions/40914200/can-i-assign-a-reset-index-a-name){dicsussion}

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

# Counting & Transforming a Series I

---
## Content

In the previous workout, we found how many movies of each rating are on this dataset[1].

Now, let's find out how many TV Shows for each rating are there but in a different way.

We will use `groupby().size()`, `to_frame()` and `reset_index`.

### .groupby().size()

`groupby()` is used to group data by a series of columns.

`.size()` on a `Series` returns the number of rows. Whilst on a `DataFrame` it returns the number of rows times the number of columns.

`.groupby().size()` returns the number of rows in each group for the specified column. The column is specified in `groupby('HERE')`.

> `.groupby().size()` on a `DataFrame` retuns a `Series`. This is why we use `.size()` here. To get the exact number.

Let's say you have this `DataFrame`:

```python
df = pd.DataFrame(
  {
    'col1': ['A', 'A', 'A', 'B'],
    'col2': [1, 2, 3, 4]
  }
)
```

The output looks like this:

![simple-df](https://img.enkipro.com/f9b6e16544fa99a6814f987648715061.png)

If we add `.groupby("col1").size()` we get this output:

![output-without-reseting-index](https://img.enkipro.com/1acf3dd12a251c308f497ea3d43019fc.png)

In `col1`, there are three A's and one B. 

At that point, our output is no longer a `DataFrame` but a `Series`.

> We will continue in the next insight.

---

## Practice

The method that counts the number of rows on a `Series` or the number of rows times the number of columns on a `DataFrame`:

```python
???
```

The method that groups data by a series of columns is:
```python
???
```

This method returns the number of rows in each group of the specified column:
```python
???
```

- .size()
- .groupby()
- .groupby().size()
- .sizeby().group()
- .group()
- .sizeby()

---

## Revision

Fill in the code to count the total number of rows for each group in the `'col3'` column of the `grades` `DataFrame`.


```python
?????????
```

- grades
- .groupby('col3')
- .size()
- Grades
- groupby(col3)
- .sum()
