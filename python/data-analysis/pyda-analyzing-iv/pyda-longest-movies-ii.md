---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - >- 
    [Astype)](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.DataFrame.astype.html){documentation}

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

# Longest Running Movies Continued

---
## Content

Now that our string column has only numbers, let's convert it to numerical values so that we can sort it.

> Strings are not sorted the same way numbers are[1]. 

Because of this, we need to first transform the values into numbers.

`.astype()` on a `Series` changes the type of values to a specified one.

Here's how we can transform `duration`'s values to `int`:
```py
# Transform duration column to numerical values and save into x
x = movieDuration['duration'].astype(int)
```

The output of `x` is just a `Series` of numerical values:

![x=series](https://img.enkipro.com/21affff2db3caa5fbb12820b32c9da1a.png)

> The order stays exactly the same as it was.

Then we are going to create a new `DataFrame` using `.assign`:

```py
# In movieDuration.assign(duration=x)
# From movieDuration, using assign
# replace the duration column with x

sortedByDuration = \
  movieDuration.assign(duration=x)\
  .sort_values('duration',ascending=False)\
  .set_index('title').reset_index()
```

`duration` `dtype` in `movieDuration`:

![movieduration](https://img.enkipro.com/900b83a7e0b0b01183e48390df0cfcf2.png)

`dtype` in `sortedByDuration`:

![sortedby](https://img.enkipro.com/7d620e0831c0cb4a749aa8623bb52f08.png)

Then we sort the values by the new `duration` column in descending order.

Last we set the index to `title` and then reset it to make the `title` a column and get a new logical index starting from 0 to the length.

Before reset:
![before-reset](https://img.enkipro.com/84fd6109603dce8537fb3b98e69ae1fc.png)

After reset:

![after-reset](https://img.enkipro.com/61cc15f3ea0a10f13ade8ca914c9c381.png)

> Here is all the work we have done so far in a notebook:

[Google Collab Notebook](https://colab.research.google.com/drive/18kAABpWyjlbJGNbJORniu_UxdTYjMB-2?usp=sharing)


---

## Practice

Fill in the gaps to replace the "gredas" column in the students `DataFrame` with the "grades" series.

```python
students = \
  students???(???=???)
```

- .assign
- gredas
- grades
- .add
- Grades
- Greads

---

## Revision

Given the code:

```python
shows['Length']\
  .astype(int)
```

Select the answer that best explains what is going on.

???

- The `shows` df has its `Length` column transformed into a `Series` of integers values.
- The `shows` df has all of its columns transformed into integer values.

---

## Footnotes

[1: Sorting Strings]

`String`s are not sorted like numbers. They are sorted **lexicographically**.

This means that every digit in a `string` filled with numbers, is treated as a letter. If you try to sort 1, 2, and 10, they will be treated as "1", "2", and "10".


This is the same as comparing "a", "b" and "ab".

"a" clearly goes before "b" in the lexicographical order. 
```plain-text
a
b
```

Next we compare "ab" with "b", "a" is clearly before "b", so "ab" goes before "b".
```plain-text
a
ab
b
```

The same logic applies to `string`s containing numbers.

"1" is clearly less than "2"
```plain-text
1
2
```

In "10", 1 is clearly less than "2" so it goes before.
```plain-text
1
10
2
```