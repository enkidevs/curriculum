---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - >-
    [UNIQUE](https://support.google.com/docs/answer/3093198?hl=en){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# UNIQUE


---

## Content

The `=UNIQUE()` function is used to return only unique rows of a given array or range of values.

The unique rows are returned in the order they appear in the source range.

The syntax is:

```plain-text
=UNIQUE(range)
```

If we had this data set[1], and we wanted to only keep the unique value we would type:

```plain-text
UNIQUE(A1:C10)
```

And the result would be:

![unique-range](https://img.enkipro.com/2b3403e142620d932627f8673a49b354.gif)

You can use an array as input:

```plain-text
UNIQUE({
  1, 2; 
  3, 4; 
  1, 2; 
  3, 4
})
```

The array is delimited by curly braces (`{}`), each column is separated by a comma (`,`), and each new row is separated by a semi-colon (`;`).

The result of the function is:

![unique-array](https://img.enkipro.com/2563add9963c85070f207d329f0f7e1f.gif)

> 💡 If you get a row that seems like its a duplicate, check for any extra spaces in the cells as well as formatting. 
> If one row has `"25%"` and another has `"25% "`, they are both unique since the second one contains an extra space at the end.


---

## Practice

The `UNIQUE()` function returns ???

- unique rows of a given array or range of values.
- duplicate rows of a given array or range of values.
- the largest value in a range or an array
- the smallest value in a range or an array


---

## Practice

If you had a table like this one, what would the output of `=UNIQUE(A1:C4)` be?

| \  | A  | B | C |
| -- | -- | - | - |
| 1  | 13 | 1 | 1 |
| 2  | 22 | 7 | 2 |
| 3  | 11 | 9 | 3 |
| 4  | 13 | 1 | 1 |

???
???
???

- | 13 | 1 | 1 |
- | 22 | 7 | 2 |
- | 11 | 9 | 3 |


---

## Footnotes

[1:Data Set]
| \  |   A  |    B   |   C  |
|:--:|:----:|:------:|:----:|
|  1 |   1  |    2   |   3  |
|  2 |  10  |   20   |  30  |
|  3 |  100 |   200  |  300 |
|  4 |   1  |    2   |   3  |
|  5 |  10  |   20   |  30  |
|  6 |  100 |   200  |  300 |
|  7 |   1  |    2   |   3  |
|  8 |  10  |   20   |  30  |
|  9 | Mark | Stefan | John |
| 10 | Mark | Stefan | John |
