---
author: Stefan-Stojanovic
type: normal
category: how-to
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# IF


---

## Content

`IF` is a logical function that returns one value if it evaluates to `TRUE` and another if it evaluates to `FALSE`.

The Syntax is:

```plain-text
IF(logical_expression, value_if_true, value_if_false)
```

For instance, we could write `=IF(A1>A2, "It is greater", "It is smaller")`

What this will output is based on the first argument.

If `A1` is larger than `A2` the output would be `"It is greater"`, if it's smaller it would output `"It is smaller"`. 

Example in both cases:

![if-example](https://img.enkipro.com/5561b64a6cb62ff33b21599c8aacb2d6.png)

What the function outputs when its `TRUE` or `FALSE` is up to you. We could've have put "banana", "abgb315123ogua", or anything else.

`IF` logical functions are good for testing if a condition is `TRUE` or `FALSE` and therefore determining if the condition we are looking for is met.

**Note** 

- The `FALSE` value doesn't need to be provided and if left empty would display an empty cell as the `FALSE` result.
- Always check if the provided values for `TRUE` and `FALSE` are in the correct order to avoid any errors while using the function.


---

## Practice

When providing values for an `IF` statement, you should ???.

- make sure your values for TRUE and FALSE are in the correct order
- make sure you provide the TRUE and FALSE values before the arguments.
