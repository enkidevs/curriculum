---
author: Stefan-Stojanovic
type: normal
category: how-to
links:
  - '[SPLIT](https://support.google.com/docs/answer/3094136?hl=en){documentation}'
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

# SPLIT


---

## Content

The `SPLIT` function is used to divide text by a specified character (or string). 

The results are placed in separate cells, on the same row as the function.

The syntax is:

```plain-text
=SPLIT(
  text,
  delimiter,
  split_by_each,
  remove_empty_text
)
```

Let's go over each input and see what they mean.

The `text` is represented by what you want to divide. You can:

- input this yourself (`=SPLIT('some text', ...)`)
- or select a cell that contains the value (`=SPLIT(A1, ...)`)

The `delimiter` is the character (or string) used to divide the value found in `text`.

The next two inputs (`split_by_each` and `remove_empty_text`) **are both optional**. 

Moreover, they are of type `Boolean` meaning they can only be `TRUE` or `FALSE`.

The `split_by_each` input (`TRUE` by default) is used to determine whether or not to split for each character in the `delimiter`.

When set to `TRUE`, each character in the `delimiter` input is considered individually. When set to `FALSE`, the characters are considered as a whole.

The `remove_empty_text` (`TRUE` by default) is used to determine whether or not to remove empty text from the result. 

By default, if there is more than one identical delimiter, they are all treated as one. If the value for `remove_empty_text` is `FALSE`, the function will input an empty cell for each duplicate delimiter.

Here is a table with the formula:

![formula-split](https://img.enkipro.com/693274a2165d9bf68aac87749e3593ae.png)

And here is the result:

![result-split](https://img.enkipro.com/5f94d70a8d4f377900c02e03c294f3f2.png)


---

## Practice

Create a function that will divide the text in cell `A7` after every `,`.

???

- `=SPLIT(A7, ",")`
- `=SPLIT(A7 - ",")`
- `SPLIT(A7, ",")`
- `SPLIT(A7 - ",")`


---

## Revision

Which function divides text by a specified character and outputs each piece in a separate cell in the same row as the function? 
```plain-text
=???()
```
- SPLIT
- DIVIDE
- SEPARATE
