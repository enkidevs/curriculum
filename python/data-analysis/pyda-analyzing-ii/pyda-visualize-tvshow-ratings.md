---
author: Stefan-Stojanovic

type: normal

category: how-to

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

# Visualize TV Show Ratings

---
## Content

Previously we used this[1] code to get a `DataFrame` output containing all TV shows sorted by rating in this dataset.

Now, let's visualize it.

First, we have to save what we found and then plot it.

```py
# Save the previous code in shows_per_rating
shows_per_rating = netflix_series\
    .groupby('rating').size()\
    .sort_values(ascending=False)\
    .reset_index(name='Sum of TV Shows')
```

We will also add colors to the bar chart by adding a parameter called `color`:

> Colors are not necessary to create a chart. However, they are useful for color-coding.

```python
# Plot the bar chart with the rating on X axis
# and Sum of TV Shows on Y axis
shows_per_rating.plot(
    x="rating",
    y="Sum of TV Shows",
    kind="bar",
    color=['red','green', 'blue']
)
# Show the plot
plt.show()
```

> When adding colors, you do not have to specify a color per bar. You can specify less than the total amount of bars and the bars will alternate in the order of the specified colors.

This is the output:

![shows-per-rating](https://img.enkipro.com/cfefb3658f1a04a37e2b36a0ad4ad519.png)

On the other hand, if you specify more colors than there are bars, the bars will be colored according to the specified colors while all the remaining colors are ignored.

---

## Practice

Finish the code to create alternating colors on a bar chart:

```python
df.plot(
    x=x1,
    y=x2,
    ???="???",
    ???=['red','green', 'blue']
)
plt.show()
```

- kind
- bar
- color
- colors
- type
- Bar

---

## Revision

Given the code below:

```python
plt.plot(
    x=x1,
    y=x2,
    kind="bar",
    color=['pink', 'green', 'yellow']
)
plt.show()
```

If our output bar chart has more than three bars, how will those bars be colored?

???

- Alternating in the order of the specified colors repeating after the last color. Pink, green, yellow, then pink, green, yellow again, and so on.
- Random order between the three specified colors. 
- Each bar will be a combination of the specified colors.


---
## Footnotes
[1:Previous Code]

```py
netflix_series\
    .groupby('rating').size()\
    .sort_values(ascending=False)\
    .reset_index(name='Sum of TV Shows')
```

The output of this code is:

![series-per-rating-count](https://img.enkipro.com/a7699cddce250f540b7259c4d0a10e2b.png)