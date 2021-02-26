---
author: Stefan-Stojanovic

type: normal

category: how-to


---

# Longest Running Shows

---
## Content

In the first Analyzing workout, we set up a couple of questions that we will try to answer regarding the `netflix_titles` dataset[2].

In this workout, we will answer **which shows and movies have the longest duration**.

Let's start with the shows first.

To determine which show has the most seasons we need to use the `duration` column. Along with that, we also need the `title` column.

It will help us in determining the titles of the longest and shortest running shows.

We already know that there are no missing values in these two columns[1].

Since they are the only columns we need, let's remove the information we don't need and extract rows where `type` equals `TV Show`.
```py
# Remove columns we wont be using in this analysis
simplifiedData = importedRawData.drop(
  columns=[
    "show_id", 
    "description", 
    "country", 
    "date_added", 
    "director",
    "cast",
    "release_year",
    "rating", 
    "listed_in"
  ]
)
```

Extract TV shows:
```py
showDuration = simplifiedData[simplifiedData['type'] == "TV Show"]
```

After extracting tv shows from the `type` column, let's drop it.
```py
showDuration = showDuration.drop(columns=['type'])
```

What we are left with is:

![showduration](https://img.enkipro.com/b2b53d42b2c50f241fafaf129e279734.png)

So, what can we do with this?

For instance we can determine how many shows have how many seasons:
```py
showDuration\
  .groupby('duration')\
  .size()\
  .sort_values(ascending=False)\
  .reset_index(name="Num Of Shows")
```

This gives us this output:

![shows-per-seasons](https://img.enkipro.com/30b18b757f39d3f7ec6aec384c9b9476.png)

From this, we get that there are only 13 shows with 10 or more seasons. While over 1000 shows have at least 1 season.

Knowing this, we can use the `.loc` function to locate the `14 Seasons` row to find its title.

```py
showDuration.loc[showDuration['duration'] == "14 Seasons"]
```

The output looks like this:
![14seasons](https://img.enkipro.com/cde1eafbe5e64448ef6b47cfefea1c15.png)

---
## Footnotes
[1: No missing values]

![nomissingvalues](https://img.enkipro.com/629e4a33e5c98d860011a442d3bba282.png)

[2: End goal questions]

End Goal Questions:

- How many movies vs TV shows are on this dataset
- How many ratings exist in the dataset
- How many movies of specific ratings are there
- Count of movies for each rating
- How many TV shows of specific ratings are there
- Count of TV shows for each rating
- In how many movies does a specific actor star in / movies per actor 
- How many movies/TV shows were released every year
- Total number of actors in movies and TV Shows
- Total number of actors that have X amount of movies/TV shows
- Which shows and movies have the longest duration
- How many genres are there
- How many movies of a specific genre are there
- Number of movies for all genres
