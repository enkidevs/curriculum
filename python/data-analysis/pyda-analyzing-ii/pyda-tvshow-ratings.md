---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - >-
    [to_frame before reset_index](https://stackoverflow.com/questions/40914200/can-i-assign-a-reset-index-a-name){documentation}
    

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

# TV Shows Ratings

---
## Content

Now that we know how the previous code works, let's apply it to `netflix_series`.

> There are two ways we can do this.

### With to_frame & reset_index

```py
# On netflix_series, group by rating
# count the number of rows for each individual rating
# sort the values in descending order
# transform the series into a DataFrame
# label the new column "Sum of TV Shows"
# Reset the index of the rating column.
netflix_series\
    .groupby('rating').size()\
    .sort_values(ascending=False)\
    .to_frame("Sum of TV Shows")\
    .reset_index('rating')
```

The output of that code is:

![toframe-output](https://img.enkipro.com/92ca8af7959786cd9bebb9c0898e3010.png)

> `\` is an escape character. If you use it at the end of a line you can tell the interpreter to extend the logical line to the next physical line.

In our case, we have extended our logical line to 5 physical lines so it's easier to read.

### With reset_index

Another way for doing this with one less step.

```py
# On netflix_series, group by rating
# count the number of rows for each individual rating
# sort the values in descending order
# reset the index and add a new column
# Sum of TV Shows
netflix_series\
    .groupby('rating').size()\
    .sort_values(ascending=False)\
    .reset_index(name='Sum of TV Shows')
```

The output of this code is exactly the same. 

![series-per-rating-count](https://img.enkipro.com/a7699cddce250f540b7259c4d0a10e2b.png)

The difference is that in the 2nd example we set the new column through the index.

Both ways work the same and it's up to you which one you want to use in your code.

---

## Practice

Given the code with missing parts, and the description, make the code match the description.

```python
???.groupby('???')???\
  ???(ascending=False)\
  .reset_index(name='???')
```

Group the `people` `DataFrame` by its `Age` column. Count the number of rows for each `Age` group. Sort the values in descending order. Reset the index to a new logical one from 0 to length and add a new column called `Count By Age` where the `groupby.size` will display the output.

- `people`
- `Age`
- `.size()`
- `.sort_values`
- `Count By Age`
- `count by age`
- `age`

---

## Revision

Fill the missing code to group the `people` df by its `Age` column. Sort the values in descending order. Transform it back to a df where the new column's name will be `Count`, then reset the index by the `Age` column.

```python
# On netflix_series, group by rating
# count the number of rows for each individual rating
# sort the values in descending order
# transform the series into a DataFrame
# label the new column "Sum of TV Shows"
# Reset the index of the rating column.
people\
    .groupby('???').size()\
    ???(???)\
    ???('Count')\
    ???('Age')
```

- Age
- .sort_values
- ascending=False
- .to_frame
- .reset_index
- index
- .to_data_frame
- descending=True
- .sort
- age
