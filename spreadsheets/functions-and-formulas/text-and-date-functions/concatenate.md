---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - >-
    [CONCATENATE](https://support.google.com/docs/answer/3094123?hl=en){documentation}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# CONCATENATE


---

## Content

Compared to `CONCAT`, `CONCATENATE` can take more than one input.

The syntax is:

```plain-text
=CONCATENATE(value1, value2, ...)
```

The input (e.g. `value1`) can be:

- a single cell
- a range of cells
- a value typed directly into the function.

> 💡 The only mandatory input is `value1`. Any other input is optional.

> 💡 If you want, you can also add delimiters (e.g. `;`, `-`, ` `, or any other character).
> To do this, you would write `=CONCATENATE(value1, " ", value2, ...)`.

In this example, we combine the values of three cells (`A2`, `B2`, and `C2`), using a space (`" "`) and a comma (`", "`) as separators. 

```plain-text
=CONCATENATE(
  A2,
  " ",
  B2,
  ", ",
  C2
)
```

![concatenate](https://img.enkipro.com/097aae294b02996550bc7bb24745af5e.png)

> ❗ When referencing cells, the data type matters!

If your cell is formatted as a text data type, the result would differ from a cell that is formatted as a date type.

Here are some more examples:

![more-concatenate-examples](https://img.enkipro.com/1107969b8b5426ab84122f7a30f56555.png)


---

## Practice

The `=CONCATENATE()` function is used to combine data from ???.

- two or more cells
- exactly two cells
