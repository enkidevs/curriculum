---
author: Stefan-Stojanovic
type: normal
category: must-know
---

# Data Types I


---

## Content

In spreadsheets, you'll usually find that there are four main data types: `Number`, `Text`, `Logical`, and `Error`.

### Number

This data type contains numerical values like whole numbers and fractions, as well as dates and times.

It's important to note that **what is displayed is not how the data is saved**.

`Dates` are saved starting as a number starting from `1` (which corresponds to `31/12/1899`). If you type `2` in a cell that expects a date, the spreadsheet tool will display the date `1/1/1900`.

`Times` are treated as fractions of a day. For example, `1` is `12:00:00AM`, `0.5` is `12:00:00PM` and `0.25` is `06:00:00AM`.

So, if we format a cell to accept time and date and we input `2.25` the displayed value will be `1/1/1900 6:00:00AM`.
 
 