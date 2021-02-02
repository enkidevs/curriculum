---
author: Stefan-Stojanovic
type: normal
category: how-to
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

# What Are Comparison Operators?


---

## Content

Comparison operators are used for comparing values.

These operators can be applied to any type of value.

- numbers
- dates
- checkboxes
- text
- special characters
- empty cells
- etc.

Each of the 6 comparison operators has an equivalent function in Google Sheets.

| **Operator** | **Function** | **Description**          |
| ------------ | ------------ | ------------------------ |
| `=`          | `EQ()`       | equal                    |
| `>`          | `GT()`       | greater than             |
| `>=`         | `GTE`        | greater than or equal to |
| `<`          | `LT()`       | less than                |
| `<=`         | `LTE()`      | less than or equal to    |
| `<>`         | `NE()`       | not equal to             |

The functions and operators can be used to achieve the same thing. 

All comparison operators as well as their equivalent functions return `TRUE` or `FALSE`.

```plain-text
A1 = 2
A2 = 3

A1 > A2
// FALSE

GT(A2,A1)
// TRUE
```

> 💡 The only difference between an **operator** and a **function** is that one is a **symbol** and the other is a **function** that implements the symbol. Both can be used to achieve the same thing.

We will explore each comparison operator in-depth in the next few insights.


---

## Practice

What are the possible outputs when using comparison operators or their equivalent functions?

???

- TRUE & FALSE
- TRUE, FALSE & a numerical result depending on the operator


---

## Revision

Match the function with its equivalent comparison operator.

```plain-text
`<`  = ???()
`=`  = ???()
`>`  = ???()
`>=` = ???()
`<>` = ???()
`<=` = ???()
```

- LT
- EQ
- GT
- GTE
- NE
- LTE
