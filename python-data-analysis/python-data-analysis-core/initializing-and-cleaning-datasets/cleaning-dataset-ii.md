---
author: Stefan-Stojanovic

aspects:
  - workout

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

# Cleaning The Dataset II

---
## Content

Previously we have determined what our dataset is about and how many rows/columns it has.

We also checked which cells are empty or not using the `isnull()` function[1].

However, reading that table cell by cell would take a lot of time. Luckily, adding `.sum()` at the end would count the missing cells for us:

![raw-isnull-sum](https://img.enkipro.com/629e4a33e5c98d860011a442d3bba282.png)

Now that we know what is and isn't missing, we can decide what we want to do with the information we have.

First, let's remove the columns we won't use.

To remove a column from a dataset we need to use the `.drop(columns = ["column1", "column2", ...])` command.

Here are the columns we will remove:

```py
# Remove columns from importedRawData
# save it into importedData
importedData = importedRawData.drop(
    columns=["show_id", 
             "description", 
             "country", 
             "date_added", 
             "director"
            ]
)
```

If we were to run head or tail again, we would get a cleaner output.

![cleaner-head](https://img.enkipro.com/f559d042eb418779165dc355236fab44.png)

The next step is deciding what we want to analyze and start analyzing. We will do that in the next workout.

> Here is all the work we have done in a notebook:

[Google Collab Notebook](https://colab.research.google.com/drive/1WQoAQhnaI5Eh-gQ_Qg-VA9VPk7aSJvgB?authuser=1)

---
## Practice

The ??? method is used to remove columns from a DataFrame.

- `.drop()`
- `.remove()`
- `.disable()`
- `.getRidOf()`

---
## Revision

Finish the code to remove the `"name"`,`"surname"`, and `"age"` columns from the given `DataFrame`: 

```python
df???(
  ???=["???", 
            "name", 
            "age"
          ]
)
```

- `.drop`
- `columns`
- `surname`
- `age`

---

## Footnotes

[1:Missing Values]

Using the `.isnull()` function on a `DataFrame` will give us a table of True/False values.

![raw-is-null](https://img.enkipro.com/f21cee53d181046c10b517cf0bf4c9a2.png)
