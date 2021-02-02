---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[IFS](https://support.google.com/docs/answer/7014145){documentation}'
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# IFS


---

## Content

The `=IFS()` function is used to evaluate multiple conditions and return the value for the first true condition.

The syntax is:

```plain-text
=IFS(
  condition1, 
  value1, 
  condition2,
  value2,
  …
)
```

Only `condition1` and `value1` are mandatory, all others are optional.

`condition1` is the first condition you want to evaluate. Possible values are:

- Array
- Boolean
- Number
- Reference to a cell containing one of the above.

The `value1` is what you want the function to return if the `condition1` is evaluated to `TRUE`.

> 💡 The `condition` and `value` are tied together. For each condition, you should have a value as well.

IF all conditions evaluate to `FALSE`, the function will return a [ #N/A error](https://www.enki.com/glossary/spreadsheets/name-error).

Here is an example with three conditions where the first two evaluate to `FALSE` and the third evaluates to `TRUE`.

![onetrue](https://img.enkipro.com/6713b51b02b5c143313c8e3fe07df487.png)

Here is one where no condition is true:

![allfalse](https://img.enkipro.com/4cb9c946dcd00caf5c435dabda965930.png)


---

## Practice

Which type of data is not supported in the `IFS()` spreadsheet function?

???

- String
- Array
- Boolean
- Number
