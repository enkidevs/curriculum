---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - >-
    [TO_PURE_NUMBER](https://support.google.com/docs/answer/3094243){documentation}
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

# TO_PURE_NUMBER


---

## Content

This function is used to convert any numerical value (e.g. date, percentage, currency, and so on) to a pure number without any formatting.

The syntax is:

```plain-text
=TO_PURE_NUMBER(value)
```

If you are referencing a numeric `value`, with or without formatting, the function removes all formatting and returns the `value`.

If you are referencing a non-numeric `value` it will just return the `value` as it is.

![to-pure](https://img.enkipro.com/590c587e854b5b135e765d969aff99d8.png)

This function is especially useful when working with pivot tables (or external add-ons). 

Working with pure values (numbers in our case) will ensure that pivot tables don't end up with a weirdly formatting value in the middle.

For instance, let's say we want to use the `=SUM()` function to calculate the sum of ten cells.

If all of those cells have numbers in them but are formatted as `plain-text`, the `=SUM()` function would not work. 

We would first have to convert them.


---

## Practice

The `TO_PURE_NUMBER` function is used to convert a ??? to a pure number value ???

- numerical value of any data type
- without any formatting.
- with all the formatting it had.
- a date/time value
- a percentage value
- a currency value


---

## Revision

Which of these cells removes all formatting from a numeric value?

| Cell | Function               |
|------|------------------------|
|  A1  | TO_PURE                |
|  A2  | NUMERIC_TO_PURE_NUMBER |
|  A3  | TO_PURE_NUMBER         |

```plain-text
A???
```

- 3
- 2
- 1
