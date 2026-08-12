---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - >- 
    [Stack](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.stack.html){documentation}
  - >- 
    [Set_index](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.set_index.html){documentation}

revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone

---

# Movies Per Actor

---
## Content

Now that we know how to split a string column, let's split `movieCast` and `tvshowCast`.

However, we also need to know what `set_index` and `.stack()` are.

`set_index` is used to set the index of the `DataFrame` using one of the existing columns.

The `.stack()` method is used to return a reshaped `DataFrame` or `Series`. The output depends on if the columns have a single level (`Series`) or multiple levels (`DataFrame`).

Here is the code we will use to split the `cast` column:

```py
# Save to splitMovieCast
# Set the Index to an existing column (type)
# split the cast column by the `, ` delimiter
# stack each value into individual rows
# Reset the index to the previously selected column
splitMovieCast = movieCast.set_index('type')\
  .cast.str.split(', ', expand=True)\
  .stack()\
  .reset_index('type')
```

Let's see how this code behaves line by line.

First off, here is how the `movieCast` df looks like:

![moviecast](https://img.enkipro.com/23051c00c5838e6025ac34e5fc9868a5.png)

When we do `movieCast.set_index('type')` we remove the index and set the `type` column as the new index:

![moviecast-setindex](https://img.enkipro.com/9d412222b4f38824e41dd4da07313436.png)

Next, we split the `cast` column by the `, ` delimiter:

![moviecast-set-split](https://img.enkipro.com/eb2d93fef0eb3af0a31449291bf576fb.png)

Then we stack everything back into individual rows:

![moviecast-set-split-stack](https://img.enkipro.com/f2a2b98eb631abd09bcc7eb598d6756b.png)

Lastly, we reset the index and our `DataFrame` looks like this:

![moviecast-set-split-stack-reset](https://img.enkipro.com/0eaf1f4bffe913833b249201cd298946.png)

Then we save that code in `splitMovieCast`. However, we are not done yet!

> We will continue in the next insight.

---

## Revision

Fill in the gaps to make the comments valid.

```py
df.set_index('???')\
  ??????('-', expand=True)\
  ???\
  ???('name')

# Set the Index to an existing column 'name'
# split the people column by the `-` delimiter
# stack each value into individual rows
# Reset the index to the previously selected column
```

- name
- .people
- .str.split
- .stack()
- .reset_index
- set_index
- stack[]
