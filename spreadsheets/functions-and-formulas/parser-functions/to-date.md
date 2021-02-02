---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[TO_DATE](https://support.google.com/docs/answer/3094239){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# TO_DATE


---

## Content

The `=TO_DATE` function is used to convert a number to a date.

The syntax is:

```plain-text
=TO_DATE(value)
```

Let's take a look at some examples:

```plain-text
=TO_DATE(0)
12/30/1899
```

This (`12/30/1899`) is the date that corresponds to the value of `0`.

Each increment of 1 is equivalent to adding a day.

```plain-text
=TO_DATE(1)
12/31/1899

=TO_DATE(2)
01/01/1900
```

> 💡 You can also use negative values if you want a date that is before `12/30/1899`.

```plain-text
TO_DATE(-1)
12/29/1899
```

> ❗ The `TO_DATE()` function expects a number as an input. 

It doesn't convert date formats as cells do. If we were to input a date (`10/10/2020`), the function interprets it as an arithmetic operation.

```plain-text
=TO_DATE(10/10/2010)

is equivalent to
=TO_DATE(0.000497512438)
```

You can reference cells that are formatted as a date because, behind the scenes, Sheets actually sees them as numbers.

That is why `0` corresponds to `12/30/1899`.

> 💡 You can also use decimal values with `TO_DATE`.

```plain-text
=TO_DATE(0.25)
12/30/1899 06:00:00 AM
```

The fractions are used to determine the time of day after midnight.

> 💡 If you use decimals in `TO_DATE` you have to format the cell as **Date time** to be able to view the time. 

Without proper formatting, `=TO_DATE(0)` and `=TO_DATE(0.25)` would look the same.

![to-date](https://img.enkipro.com/7540d5617465b0099bc0747edd9c1c21.png)


---

## Practice

Finish the code below to convert the number 7 to a date value.

```plain-text
=???7???
```

- TO_DATE(
- )
- TODATE(
- TO_DATE[
- ]
- TODATE[


---

## Revision

Which parser function is used to convert a numeric value to a date value?

```plain-text
=???()
```

- TO_DATE
- DATE_TO
- CONVERT_TO_DATE
- DATE
