---
author: Stefan-Stojanovic

type: normal

category: must-know

revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
 
links:
  - >-
    [TV Parental Guidelines](https://en.wikipedia.org/wiki/TV_Parental_Guidelines){documentation}
 
---

# Movie Per Rating

---
## Content

Currently, we know we have exactly 4265 movies in this dataset and an X amount of ratings.

Let's figure out which groups of ratings there are and how many movies belong to each group.

> Using this information we will be able to determine which movie we would like to watch based on a rating.

We already found and saved into a new variable the number of movies and tv shows[1].

To find how many movies belong to each rating we will use `.value_counts()`.

`value_counts()` returns a `Series` containing the count of only unique values. All non-unique and `NaN` values are ignored.

There are two ways we can apply this to our dataset.

First option:
```python
# 1
netflix_movies.value_counts('rating')
```

This translates to:

On `netflix_movies` count all the values for the `rating` column.

The output looks like this:

![value-counts-rating](https://img.enkipro.com/b25578827a1f43c6de372b4fb786cae8.png)

Second option:

```python
# 2
netflix_movies.rating.value_counts()
```

On `netflix_movies` `rating` column, count all the values.

Now it looks like this:

![rating-value-counts](https://img.enkipro.com/0cc70287b1a54ac2352a870d35c659a4.png)

Both options give us the total number of movies per rating sorted in descending order.

Whichever option you chose, save it in a new variable, for instance, `movie_ratings`. We will use this later on.

According to these results, these are all the ratings we have: `TV-Y`, `TV-Y7`, `G`, `TV-G`, `PG`, `TV-PG`, `PG-13`, `TV-14`, `R`, `TV-MA`, `NC-17`, `TV-Y7-FV`, `NR`, and `UR`.

> To learn more about what each rating means, check out the **Learn More** section.

---
## Revision

Fill in the gaps to count the total number of values for the books column:

```python
df.???.???
```

- books
- value_counts()
- count_value()

---
## Footnotes

[1: Movie/Tv Show Count]

```py
# Locate rows where the column called "type" has "Movies" in it.
netflix_movies = importedData.loc[importedData['type'] == 'Movie']

# Locate rows where the column called "type" has "TV Show" in it.
netflix_series = importedData.loc[importedData['type'] == 'TV Show']

```
