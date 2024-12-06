---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - >-
    [sort_values](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.sort_values.html){documentation}

revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# Visualize Movie Ratings

---

## Content

Just like before, to better represent what we found, let's visualize it.

For this visual representation, we will pick the `bar` chart.

Bar charts are best used to provide a visual presentation of ordinal data.

If our data had 6 or fewer categories, it would be best to use a pie chart. However, with these 14 categories, a pie chart would be too cluttered.

To create this chart, we will use the data from the previously created `movie_ratings`[1] variable.

Unlike plotting the `pie` chart, this time we will use the `.plot` function.

This is a universal plotting function that can be applied to a `Series` or a `DataFrame` to plot any chart type. Some of these are, `line`, `bar`, `barh`, `pie`, `box` and so on. The default chart type is `line`. 

The `.plot` function has over 30 arguments you can use, but only one is mandatory (the data).

Let's see how we can apply this function to our `movie_ratings` variable:

```py
import matplotlib.pyplot as plt

# Plot a `kind=bar` chart from `movie_ratings`
movie_ratings.plot(kind='bar')
plt.show()
```

In our example, the data is applied by attaching the `plot` function to the `Series`. If it were a `DataFrame`, we would also have to specify the `x` and `y` values based on the columns we want to use. 

The visualized output looks like this:

![visualized-moviecount](https://img.enkipro.com/7cb7123b75813d6b9f8f4a23b9d3eb79.png)

As the x axis labels are hard to read in this image, we can also slant them to a desired degree.

This is done through the `.xticks(rotation=degrees)` method.

For instance:
```python
import matplotlib.pyplot as plt

movie_ratings.plot(kind='bar')
plt.xticks(rotation = 45)

plt.show()
```

After adding the 45 degree rotation, the visualization looks like this:

![visualized-slanted-x-axis-movie-count](https://img.enkipro.com/dff8a6358155ebb5b50737620cf2a86b.png)

> Here is all the work we have done so far in a notebook:

[Google Collab Notebook](https://colab.research.google.com/drive/1vn3b-SaZX4Jky7vEduRYUpd5Wvx7YbDQ?authuser=1)

---

## Revision

Given the `DataFrame`:

```python
data = {
  "Name": [
    "Stefan",
    "Marcus",
    "Danielle",
    "Layla"
  ],
  "Book_Count": [36, 33, 71, 132]
}
 
bookCountPerPerson = pd.DataFrame(data, columns=["Name", "Book_Count"])
```


Fill in the gaps to create a simple bar chart from `bookCountPerPerson`. Don't forget to show the plot afterward.

```python
import matplotlib.pyplot as plt

bookCountPerPerson.???(
    ??? = "Name",
    ??? = "Book_Count",
    ??? = "bar"
)

???
```

- plot
- x
- y
- kind
- plt.show()
- type
- style

---

## Footnotes

[1: Previous Code]

```python
movie_ratings = netflix_movies.rating.value_counts()
```