---
author: Stefan-Stojanovic

type: normal

category: must-know

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

# Movie & TV Show Count

---
## Content

To determine how many movies and/or tv shows this dataset has, we will use two functions: `DataFrame.loc` and `.count()`

`DataFrame.loc` is used to locate a group of rows and columns based on the label.

`.count()` is used to count the total number of rows without `NaN` values across all columns.

Here's how we can use them on our `importedRawData` dataset:
```py
# Locate rows where the column labeled "type" has "Movie" in it.
netflix_movies = importedData.loc[importedData['type'] == 'Movie']

# Locate rows where the column labeled "type" has "TV Show" in it.
netflix_series = importedData.loc[importedData['type'] == 'TV Show']
```

Using `.loc`, we have extracted movies and TV shows into separate variables to be able to easily get the total count of rows for movies and shows separately.

Next, we applied the `.count()` function and printed the result.

```python
# Count and print the number of values for netflix_movies and netflix_series 
print(netflix_movies.count())

print(netflix_series.count())
```

> 💡 We could also attach `.count()` at the end of each `.loc` statement.  

The output of this print statement looks like this:

![movie-tvshow-count](https://img.enkipro.com/2cb189e0e89c3245a37bb333d8d4eba1.png)

The left side is the name of the column and the right side is how many rows of data exist in that column.

Since we know from our previous function[1] that the `type` column has no missing data. We can determine that this number is the total number of movies and/or tv shows.

As we have first run the `netflix_movies.count()` the upper numbers are for movies.

That means there are a total of 4265 movies and 1969 tv shows on this dataset.

---

## Practice

Fill in the gaps to display every person in the `people` dataset whose `age` is 27 or older.

```python
people.loc[
  ???['???'] ??? '27'
]
```

- `people`
- `age`
- `>=`
- `Age`
- `>`


---

## Revision

The function that is used to locate a group of rows and columns based on the label/s is:

```python
DataFrame.???
```

- loc
- find
- search
- discover

---

## Footnotes

[1:Sum Of Empty Cells]
We determined which columns do and don't have empty cells with this command:

```python
importedRawData.isnull().sum()
```

Which gave us this output:
![sum-empty-cells](https://img.enkipro.com/629e4a33e5c98d860011a442d3bba282.png)
