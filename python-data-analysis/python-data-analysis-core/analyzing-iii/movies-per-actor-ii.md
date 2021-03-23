---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - >- 
    [Stack](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.stack.html){documentation}
  - >- 
    [Rename](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.rename.html){documentation}

revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# Movies Per Actor Continued

---
## Content

In the previous insight, we used this code[1] to split the cast column for the movie cast. But we didn't finish modifying it.

The next thing we need to do is rename the `0` labeled column.

To rename a column, you need to use `.rename(columns={"column":"New Name"})`.

There are two options:
```python
# Rename by column index
df.rename(columns={0: "A", 1: "B"})

# Rename by column name
df.rename(columns={"B": "b", "C": "c"})
```

In our case, all we have to do is:
```python
splitMovieCast = \
  splitMovieCast\
  .rename(columns={0: 'Actor'})
```

The output looks like this:

![rename-split-movie-cast](https://img.enkipro.com/ebb6cd3ba5f0f6806fb22eb8650e5244.png)

Next, we can sort the values and swap the columns using this code:

```python
splitMovieCast\
  .sort_values('Actor')[['Actor', 'type']]
```

![sort-value-reorder-column](https://img.enkipro.com/766cd3b731d60c2f5434041b4a2b4478.png)

Then we reset the index to have a logical index from 0 to the length of the column:

![reset-to-type](https://img.enkipro.com/8f8a386e584d4a9c61c4ce051636417b.png)


As mentioned in a previous workout, `reset_index` resets the index and adds it as a new column. The `drop=True` prevents it from doing that.

Here is how the above code would look if we didn't use `drop=True`:

![no-drop-true](https://img.enkipro.com/f2aad21978de43d81590aa1a80f9e2f2.png)

The next step is something we have already done before, `groupby().size()`.

```py
# Save in moviePerActor
# group by Actor
# Get the number of rows for each actor
# Sort in descending order
# reset the index to Sum of Movies
moviePerActor = splitMovieCast\
  .groupby('Actor')\
  .size()\
  .sort_values(ascending=False)\
  .reset_index(name='Sum of Movies')
```

When we call `moviePerActor` we get this output:

![movie-per-actor](https://img.enkipro.com/0abc712cb32ead2f1275255e3d4c605a.png)

This output gives us actor names, the total count of movies they were in, and the total number of actors present across all movies in this dataset; `18860`.

> Let's do the TV Show actor count in the next insight.

---

## Revision

Fill in the gaps to make the comments valid.

```py
humans
  ???(columns={???:'People'})\
  .sort_values('???')\
  .reset_index(drop=???)

# Rename the second column of the humans df to "People"
# Sort the values by the People column
# reset the index but don't add a new column

```

- .rename
- 1
- People
- True
- False
- rename
- 2
- people


---
## Footnotes
[1: Previous Code]

```python
# Save to splitMovieCast
# Set the Index to an existing column (type)
# split the cast column by the `, ` delimiter
# stack each value into individual rows
# Reset the index to the previously selected column
splitMovieCast = movieCast.set_index('type')\
  .cast.str.split(', ', expand=True)\
  .stack()\
  .reset_index('type')
```