---
author: Stefan-Stojanovic

type: normal

category: must-know

links:
  - >-
    [Matplotlib Modules](https://matplotlib.org/stable/py-modindex.html){documentation}
  - >-
    [Pyplot Module](https://matplotlib.org/stable/api/_as_gen/matplotlib.pyplot.html#module-matplotlib.pyplot){documentation}

practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Visualize Output I

---
## Content

In the previous insight[1] we figured out how many movies and shows are there in the database. However, to fully grasp or communicate the scale of the difference, we could also visualize these stats.

To do this we will use `matplotlib`. You can see how to install it here[2].

`matplotlib` is an open-source library that contains an extensive collection of modules for visualization. 

Before we decide which module we will use, we need to decide which type of chart we want to plot.

Pie charts are best used when you want to compare parts of a whole. Since we are only comparing two parts of a whole, we will use this chart.


The `matplotlib` library provides a `.pie` function in the `.pyplot` module.

To use it, we need to import it.

```py
import matplotlib.pyplot as plt
```

To create the most basic pie chart, all we have to do is add the data we gathered in the last insight to the `.pie` function and show the plot:

```python
# netflix_movies.count()
# 4265

# netflix_series.count()
# 1969

# Plot Pie chart
plt.pie([4265,1969])

# Show the plot
plt.show()
```

The output of this code looks like this:

![plt-pie-output](https://img.enkipro.com/91fd23fddc318cc690ae4cba72b1c809.png)

In the example, we added the output values by rewriting them. This is not the best practice for larger data. We can directly plug in the outputs of our previous functions by modifying them a bit.

Instead of `netflix_movies.count()` which gives the count of all rows across all columns, we can count only one column's values and plug that in.

We will pick any column with zero `NaN` values[3]. For instance, the `type` column.

```python
plt.pie([
  netflix_movies.type.count(),
  netflix_series.type.count()
])

plt.show()
```

`plt.show()` looks for all currently active figure objects, and opens interactive windows that display your figures. This is required to properly display the chart.

> Let's modify the appearance of the chart in the next insight.

---

## Practice

Create a pie chart by filling in the blanks. Don't forget to show the plot.

```python
import matplotlib.pyplot as plt

plt???(???)

plt???
```

- `.pie`
- `[1200, 900]`
- `.show()`

---

## Revision

Pie charts are best used when you want to represent ???

- parts of a whole
- a change over time

---

## Footnotes

[1: Movie/TV Show Count]

```py
# Locate rows where the column called "type" has "Movie" in it.
netflix_movies = importedData.loc[importedData['type'] == 'Movie']

# Locate rows where the column called "type" has "TV Show" in it.
netflix_series = importedData.loc[importedData['type'] == 'TV Show']

# Count and print the number of values for netflix_movies and netflix_series 
print(netflix_movies.count())

print(netflix_series.count())

# netflix_movies.count() = 4265
# netflix_series.count() = 1969
```

[2: Installing matplotlib]

There are two ways to install `matplotlib`.

Installing through `pip`:
```python
python -m pip install -U matplotlib
```

> If you already have `matplotlib` installed, the above code will uninstall an older version and install the newest stable release.

Installing through `conda`:

```python
conda install -c conda-forge matplotlib
```

[3: No Nan Values]

![raw-isnull-sum](https://img.enkipro.com/629e4a33e5c98d860011a442d3bba282.png)
