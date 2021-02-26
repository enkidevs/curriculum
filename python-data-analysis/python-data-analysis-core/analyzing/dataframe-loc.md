---
author: Stefan-Stojanovic

type: normal

category: must-know

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

# DataFrame.loc

---
## Content

Previously, we have found how many movies of each rating there are on this dataset[1].

However, what if we wanted to find a single rating and save it in a new variable?

To search for only a single rating, we would use the `DataFrame.loc` function.

Let's find the number of movies that have the `TV-Y` rating:

```python
ratingTVY = netflix_movies.loc[netflix_movies['rating'] == 'TV-Y'].count()
```

Calling `ratingTVY` we get this output:

![rating-tvy-output](https://img.enkipro.com/f7b7f094361df6f461a20f0c128ce806.png)


Using this function we could manually find all movies of every rating as we did in the previous workout using `value_counts()`. However, it would take more time.

---
## Practice

What will the `.count()` method do in the following code?
```py
df.loc[df['Type'] == 'Film'].count()
```

Count the number of rows that have ???

- the `Film` value in the `Type` column.
- the `Type` value in the `Film` column.

---
## Revision

Fill in the gaps to find all rows that contain the value `Mike` in the `Name` column of the given `DataFrame` and count them:

```python
df.loc[df['???'] == '???'].???
```

- Name
- Mike
- count()
- name
- mike
- Count()

---
## Footnotes

[1: Movies Per Rating]

![rating-value-counts](https://img.enkipro.com/0cc70287b1a54ac2352a870d35c659a4.png)