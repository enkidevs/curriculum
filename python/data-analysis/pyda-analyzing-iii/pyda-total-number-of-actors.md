---
author: Stefan-Stojanovic

type: normal

category: how-to

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

# Total Number Of Actors

---
## Content

In the first Analyzing workout, we set up a couple of questions that we will try to answer regarding the `netflix_titles` dataset.

In this workout, we will answer **what the total number of actors is**.

To get the total number of actors, we first have to separate the comma-separated values from the `cast` column.

Also, we knew from the beginning that the `cast` column had some missing information[1].

The cells with missing information have been auto-filled with `NaN` values.

To remove rows that have `NaN` we have to use the `.dropna` method.

```py
# Remove all nan values from `cast` column
# Save into noNanValuesDF
noNanValuesDF = importedData.dropna(subset=['cast'])
```
`subset` is used to specify the column. If no column is specified, all columns will drop rows with `NaN` values.

Next, let's separate the movie cast from the TV Show cast:
```py
# Locate rows where the column called "type" has "Movies" in it.
movieCast = noNanValuesDF.loc[noNanValuesDF['type'] == 'Movie']
# 3905

# Locate rows where the column called "type" has "TV Shows" in it.
tvshowCast = noNanValuesDF.loc[noNanValuesDF['type'] == 'TV Show']
# 1759
```

Now that they are split, let's separate the `cast` field by the `, ` delimiter. 

To split a `string` column you have to use the `.str.split()` method.

The syntax for this method is:
```py
.str.split(pat=None, n=- 1, expand=False)
```

`pat` is the delimiter, if not specified, the default value is whitespace.

`n` is used to limit the number of splits. If not specified, the default value is -1. It means "Split all"

`expand` is a bool field. If set to `True`, it returns a `DataFrame`. If set to `False`, it returns a `Series` containing a list of strings.

In our case, we want to split by the `, ` delimiter, split all, and return a `DataFrame`.

That means we will use this code:
```py
.str.split(', ', expand=True)
```

> The extra space is there because there is a space after every comma-separated value. When we split values like: "Stefan, Maria", we don't want to be left with `Stefan` and ` Maria`. 

> We will continue in the next insight.

---

## Practice

Which method can be used to remove all rows that have a `NaN` value?

```python
???
```

- .dropna()
- .removena()
- .dropNaN()
- .removeNaN()

---

## Revision

Fill in the code to drop all rows that have `NaN` values in the `Age` column of the `school` dataset and save it in a new variable called "`noNanValues`".

```python

??? = \
  school.???(???=['???'])
```

- noNanValues
- dropna
- subset 
- Age
- age
- nonanvalues
- SUBSET

---
## Footnotes
[1:Missing Information]

![missing-cast](https://img.enkipro.com/b382ceeb3ea3513cf9f1874b7a7e7354.png)
