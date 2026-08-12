---
author: Stefan-Stojanovic

type: normal

category: how-to

---

# Movie Count Per Release Year

---
## Content

To determine the movie count per year released we have to `groupby` the `release year` and create a new column labeled `"Movie Count"` by reseting the index.

Here's how that looks:
```py
# Save in movies by release year
# Group by the year of release
# Get the row count for each group
# Sort the values in descending order
# Reset index and create new colum labeled Movie Count
movies_by_release_year = netflix_movies.groupby('release_year')\
  .size()\
  .sort_values(ascending=False)\
  .reset_index(name='movie_count')
```

The output looks like this:

![movies-by-release-year](https://img.enkipro.com/8edbf5b4ac2e83772d5ccb533d7daeda.png)

Since this output has 70 rows, visualizing it in a single chart will have too much information. Let's split it into 3 `DataFrames` and visualize each of them:

```py
# Movies released on and prior to 1979
movies_before_1980 = movies_by_release_year[movies_by_release_year['release_year'] <= 1979]

# Movies released betweem 1980 and 1999
movies_between_1980_2000 = movies_by_release_year[(movies_by_release_year['release_year'] >= 1980) & (movies_by_release_year['release_year'] < 2000)]

# Movies released on and after 2000
movies_after_2000 = movies_by_release_year[movies_by_release_year['release_year'] >= 2000]
```

Now that they are extracted, they are still in order based on the number of movies per year of release. Let's change the order to be according to the year of release for each group and save them in a new variable:

```python
after_2000 = movies_after_2000\
  .sort_values('release_year', ascending=False)

before_1979 = movies_before_1980\
  .sort_values('release_year', ascending=False)

between_1980_2000 = movies_between_1980_2000\
  .sort_values('release_year', ascending=False)
```

> We will plot them in the next insight.