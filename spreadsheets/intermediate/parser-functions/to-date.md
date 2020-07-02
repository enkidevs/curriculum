---
author: Stefan-Stojanovic

aspects:
  - workout

type: normal

category: how to

---

# TO_DATE Function

---
## Content

The `TO_DATE` function is used to convert a number to a date.

Syntax:
```plain-text
TO_DATE(value)
```

The `value` can be a manually inputted argument or a reference to a cell to be converted to a date.

`=TO_DATE(0)` = `12/30/1899` 

This is the date spreadsheets counts as the 0th day.

To go to a date before `12/30/1899` you have to use negative numbers.

The `TO_DATE()` function does not convert date formats as cells do. `TO_DATE(10/10/2010)` is equivalent to `TO_DATE(0.000497512438)`.

The fractions within the function are first calculated then converted.

If you are referencing a non-number cell or manually input something other than a number, the function will just return the `value` as is.

![to-date](https://img.enkipro.com/7540d5617465b0099bc0747edd9c1c21.png)

---
## Practice

Finish the code below to convert the number 7 to a date.

```
???7???
```

- TO_DATE(
- )
- TODATE(
- TO_DATE[
- ]
- TODATE[