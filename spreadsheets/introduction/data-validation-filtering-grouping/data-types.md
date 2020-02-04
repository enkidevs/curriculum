---
author: Stefan-Stojanovic

levels:
  - beginner

aspects:
  - introduction
  - deep

type: normal

category: must-know

---

# Data Types

---
## Content

With spreadsheet, you will usually find that there are four main data types: `Number`, `Text`, `Logical` and `Error`.

### Number

This data type contains numerical values such as whole numbers, fractions, as well as dates and times.

It is important to note that what is displayed is not how the data is saved.

`Dates` are saved starting as a number start from `1` (which corresponds to `31/12/1899`). If you type `2` in a cell that expects a date, the spreadsheet tool will display the date `1/1/1900`.

`Times` are treated as fractions of a day. For example, `1` is `12:00:00AM`, `0.5` is `12:00:00PM` and `0.25` is `06:00:00AM`.

So, if we format a cell to accept time and date and we input `2.25` the displayed value will be `1/1/1900 6:00:00AM`.

### Text

This data type contains any letter, symbol, space, tab as well as number.

For instance, if you have `00123` in a cell that treats its input as a `Number`, it will save it as `123`. Whereas if you have a `Text` data type, it will save it as `'00123'`.

This is because, in number format, any 0 before a number doesn't change the value of that number (`01 = 0001 = 1`). In `Text` format, each character is part of a string and the whole input is saved.

### Logical

This data type can only take the two value of a boolean: `TRUE` or `FALSE`.

They are usually presented as a result of a function. We will discuss these in the `Functions` mission.

### Errors

`Errors` are usually displayed when there is a problem with a function or formula.

For instance, if you try to divide a number by `0` you will get the `#DIV/0!` message.

Here is a list of errors in Excel:

![error-list](https://img.enkipro.com/aec9daa1f3be3570bf4e5770706dc866.png)

---
## Practice

Which of these are the 4 main data types in Excel?

???

* Number, Text, Logical, and Errors.
* Number, Date, String, and Error.
* Number, Date, String, and Text.
* Number, Double, String, and Logical.
