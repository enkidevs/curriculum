---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[CEILING](https://support.google.com/docs/answer/3093471){documentation}'
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

# CEILING


---

## Content

The `=CEILING()` function is used to round a number up to a specified integer or decimal place.

The syntax is:

```plain-tex
=CEILING(value, factor)
```

The `value` is what we want to round down. You can manually input a number or select a cell.

The `factor` value is optional. It determines up to what decimal the `value` is rounded up. 

> 💡 The `factor` value is `1` by default and can never be `0`.

When the `value` is positive, the `factor` must be positive. 

When the `value` is negative, the `factor` can be either positive or negative.

![ceiling](https://img.enkipro.com/3ad58926a0e4b72d6897e9fa009f6345.png)


---

## Practice

The ??? function is used to round a number ??? to a specified integer or decimal place.

- CEILING()
- up
- FLOOR()
- down


---

## Revision

What would the output of this function be?

```plain-text
=CEILING(19.89)
???
```

- 20
- 19
- 21
- 19.9
