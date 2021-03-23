---
author: Stefan-Stojanovic

type: normal

category: how-to

links:
  - >- 
   [Str.Replace](https://pandas.pydata.org/pandas-docs/stable/reference/api/pandas.Series.str.replace.html){documentation}

revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Longest Running Movies

---
## Content

For longest-running movies, we are going to remove ` min` from every cell in the `duration` column using `str.replace`, and then convert that column to numerical values using `.astype(int)`.

The syntax for `.str.replace()` is :
```py
Series.str.replace(
  pat, 
  repl, 
  n= -1, 
  case=True,
  regex=True
)
```

`pat` is the sequence of characters or a regular expression.

`repl` is the replacement string.

`n` is the number of replacements to make from the start. By default it is set to `-1` which means *replace all*. 

`case` is `bool`. `True` means case sensitive, `False` means not. By default, set to `True`.

`regex` is also of type `bool`. `True` means treat `pat` as a regular expression while `False` means to treat it as a string literal. By default, it is set to `True`.

The output is a `Series` where everything matching `pat` was replaced with `repl`.

Let's use the same `simplifiedData`[1] from the last insight.

We will extract movies into `movieDuration` and drop the `type` column.
```py
# Split movies
movieDuration = simplifiedData[simplifiedData['type'] == "Movie"]

# Drop type column
movieDuration = movieDuration.drop(columns=['type'])
```

After that we will remove ` min` from the `duration` column:
```py
movieDuration['duration']= movieDuration['duration']\
.str.replace(" min", "")
```

Now the column looks like this:

![duration-no-minutes](https://img.enkipro.com/20a9bbe37844becebfd5ce77b42bada2.png)

> We will continue in the next insight.

---

## Revision

What does the `.str.replace()` method do in this code?

```python
df['duration'] = \
  df['duration']\
  .str.replace(" min", "")
```

Replaces every string in the ??? column of the ??? `DataFrame` that has a ??? substring in it with ???.

- `duration`
- `df`
- `" min"`
- `nothing`
- `"min "`
- `DF`
- `replace`
- `a space`

---
## Footnotes
[1: Previous Data]

```py
# Remove columns we wont be using in this analysis
simplifiedData = importedRawData.drop(
  columns=[
    "show_id", 
    "description", 
    "country", 
    "date_added", 
    "director",
    "cast",
    "release_year",
    "rating", 
    "listed_in"
  ]
)
```
