---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - >-
    [to_frame before reset_index](https://stackoverflow.com/questions/40914200/can-i-assign-a-reset-index-a-name){documentation}

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

# Counting & Transforming a Series II

---
## Content

Using the same `df` from the previous insight[1].

### .to_frame()

This method can only be used on a `Series`. 

It transforms a `Series` into a `DataFrame`.

There is only one parameter, `name`. You use it to specify the name of the column.

Using the same example from the previous insight, we will add this function and a name for the column:

```python
# Previous DataFrame
# Saved into the same variable
df = df.groupby("col1").size()

# It is now a Series

# Transform it into a DataFrame
df.to_frame(name="sum")
```

From this code, we get this output:

![groupby-toframe](https://img.enkipro.com/fd333ed70937bef66a27f7eaf474b9c1.png)

However, now we don't have an index and need to reset it.

### .reset_index()

This method is used to reset an index of a `DataFrame`. 

When resetting an index, if one already exists, it will become a column, and a new logical index from 0 to length will be assigned. 

Let's reset it for the first column by adding `.reset_index('col1')`.

![final-output-toframe](https://img.enkipro.com/eb130d395d576c5e425fab2a948f3f44.png)

Now we have a `DataFrame` output.

If we reset again, we get a new column and index.

![reset-again](https://img.enkipro.com/2c81a2be21196e7e6f28f26030ac7587.png)

Another way we could've done this process is by skipping `to_frame()`.

If we skip this method, we have to pass a `name` parameter to `reset_index()` to choose a different name for the column.

This is because, if we reset an index on a `Series` and add it as a column, we will have a `DataFrame` output:

![new-column-blah](https://img.enkipro.com/d42a98e46bf8547b37abb42e5528ab0b.png)

> The main reason we would want a regular `DataFrame` as output is so that we can continue manipulating it.

> Let's see in the next insight how this works on our `netflix_series` dataset.

---

## Practice

Given the `df`:

```python
df = pd.DataFrame(
  {
    'col1': [1, 1, 1, 1, 2],
    'col2': [2, 3, 4, 5, 9]
  }
)
```

What would the output look like if we do this:
```python
df.groupby('col1').size()
```

```python
# Option A
col1
1    4
2    1
dtype: int64

# Option B
col1
1    2
2    4
dtype: int64

# Option C
col1
1    1
2    1
dtype: int64

# The output would look like
# Option ???
```

- A
- B
- C

---

## Revision

Given the `Series` output:
```python
# df.groupby('col1').size()
col1
1    4
2    1
dtype: int64
```

Fill in the code to transform the output `Series` back into a `DataFrame` object. Name the new column `"Sum"`.

```python
df.???(???="???")
```

- to_frame
- name
- Sum
- column
- label
- sum
- to_dataframe

---

## Footnotes

[1: Previous Result]

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

Add `.groupby("col1").size()`:

![output-without-reseting-index](https://img.enkipro.com/1acf3dd12a251c308f497ea3d43019fc.png)