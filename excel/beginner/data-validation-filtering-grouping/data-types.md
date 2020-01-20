---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - new
  - workout

type: normal

category: must-know

---

# Data Types

---
## Content

There are 4 main data types in Excel. `Number`, `Text`, `Logical` and `Error`.

- The `Number` data type are any numbers like whole numbers, fractions, as well as dates and times.

It is important to note that what is displayed is not how Excel saves its data.

`Dates` are saved starting from number `1` which is the date `31/12/1899`. If you type the number `2` in a cell and tell excel to treat that cell as a date, it will display the date  `1/1/1900`.

The `Times` are treated as fractions of a day. `24` hours or `1` is `12:00:00AM`, `0.5` is `12:00:00PM` and `0.25` is `06:00:00AM`.

So if we format a cell to treat its input as both Time and date. `2.25` would be displayed as `1/1/1900 6:00:00AM`

- The `Text` data type are any letter, symbol, space, tab as well as number.

For instance, if you have `00123` in a cell that treats its input as a `Number` data type, it will save it as `123`. Whereas if you have a `Text` data type, it will save it as `00123`.

This is because, in number format, any 0 before a number doesn't change the value of that number. `01 = 0001 = 1`. Whereas in `Text` format, each character is part of a String and the whole input is saved.

- `Logical` data types are the Boolean `TRUE` and `FALSE`.

These data types are usually presented as a result of a function. We will discuss these in the `Functions` workout.

- `Errors` are usually displayed when there is a problem with a function or formula.

For instance, if you try to divide a number by `0` you will get the `#DIV/0!` because you cannot divide a number with `0`.

List of errors in Excel:

![error-list](https://img.enkipro.com/aec9daa1f3be3570bf4e5770706dc866.png)

---
## Practice Question

Which of these are the 4 main data types in Excel?

???

* Number, Text, Logical, and Errors.
* Number, Date, String, and Error.
* Number, Date, String, and Text.
* Number, Double, String, and Logical.