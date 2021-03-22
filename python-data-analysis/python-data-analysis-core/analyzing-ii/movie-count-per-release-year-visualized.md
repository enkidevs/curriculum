---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - >-
    [Line Styles](https://matplotlib.org/3.1.1/api/_as_gen/matplotlib.pyplot.plot.html){documentation}

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

# Movie Count Per Release Year

---
## Content

Now that we have these values extracted and ordered[1], let's make some line charts.

Line charts are best used to compare changes over time. They are useful for both small and large groups of data when trying to look for a trend or a measure over time.

```python
# Plot the X values with data from the release_year column of the `before_1979` df,
# Plot the Y values with the data from the `movie_count` column of the `before_1979` df,
# Add a label "Before 1979"
# Make the style of the line dashed
# Add a marker 'o' on break points
# Color the line in a green color
plt.plot(before_1979.release_year,\
  before_1979.movie_count,\
  label="Until 1979",\
  linestyle='--',\
  marker='o',\
  color='g'
)

# Set the X axis label to "Release Year"
plt.xlabel('Release Year')
# Set the Y axis label to "Count"
plt.ylabel('Count')
# Set a title of the current axes.
plt.title('Movie VS TV Show count by relese year')
# show a legend on the plot
plt.legend()
# Display a figure.
plt.show()
```

The output of this code looks like this:

![movies-before-1979](https://img.enkipro.com/22e7c709119de6a088cbd0cd89a88d4c.png)

We will use the same code for the other two groups, except we will make some small changes to the styling.

For movies between 1980 and 2000, we will use blue color, the same marker, and a full line.

```python
linestyle='-',\
marker='o',\
color='blue'
```

You can view the full code here[2].

![movies-after-2000](https://img.enkipro.com/1c7a7a522724ac61443c3806ca4abf33.png)

For movies released after 2000, we will use a red color, an X marker, and a dotted line[3].

```python
linestyle=':',\
marker='x',\
color='#FF0000'
```

![movies-between-1980-1999](https://img.enkipro.com/998ce9deaacc3485cb8d967915196c51.png)

As you can see, the colors of the line can be assigned with a single letter, a hex string, or a full name. There are also a lot of different markers you can choose from. To check out all the different styles, visit the link in the **Learn More** section.

> Here is all the work we have done so far in a notebook:

[Google Collab Notebook](https://colab.research.google.com/drive/1v69QDwPVvbS3BMxlG4cAZIoDGh0I8l-R?usp=sharing)

---

## Practice

Fill in the gaps to plot a line-styled chart. The chart should have an `x` marker, a dotted line, and red color.

```python
import matplotlib.pyplot as plt

plt.???(x1, x2, \
    label="This is a label",\
    ??? =':',\
    marker='???',\
    ???='???')
```


- plot
- linestyle
- x
- color
- red

---

## Revision

Fill in the gaps to plot a line styled chart. The chart should have an `>` marker, a solid line, and purple color.

```python
import matplotlib.pyplot as plt

???.???(x1, x2, \
    label="Some Label",\
    linestyle ='???',\
    marker='???',\
    ???='???')
```

- plt
- plot
- -
- >
- color
- purple

---

## Footnotes

[1:Previous insight]

After extracting the values, we have re-ordered them based on the `release_year` in descending order.
```python
after_2000 = movies_after_2000\
  .sort_values('release_year', ascending=False)

before_1979 = movies_before_1980\
  .sort_values('release_year', ascending=False)

between_1980_2000 = movies_between_1980_2000\
  .sort_values('release_year', ascending=False)
```

[2: Movies Between 1980 & 2000]
```python
# Plot the X values with data from the release_year column of the `between_1980_2000` df,
# Plot the Y values with the data from the `movie_count` column of the `between_1980_2000` df,
# Add a label
# Make the style of the line full
# Add a marker 'o' on break points
# Color the line in a green color
plt.plot(between_1980_2000.release_year,\
    between_1980_2000.movie_count, \
    label="Between 1980 & 2000",\
    linestyle='-',\
    marker='o',\
    color='blue'
)

# Set the X axis label to "Release Year"
plt.xlabel('Release Year')
# Set the Y axis label to "Count"
plt.ylabel('Count')
# Set a title of the current axes.
plt.title('Movie Count By Year Between 1980 & 2020')
# show a legend on the plot
plt.legend()
# Display a figure.
plt.show()
```

[3: Movies After 2000]
```python
plt.plot(after_2000.release_year,\
    after_2000.movie_count,\
    label="Movies",\
    linestyle=':',\
    marker='x',\
    color='#FF0000'
)

# Set the X axis label to "Release Year"
plt.xlabel('Release Year')
# Set the Y axis label to "Count"
plt.ylabel('Count')
# Set a title of the current axes.
plt.title('Movie Count By Year After 2000')
# show a legend on the plot
plt.legend()
# Display a figure.
plt.show()
```