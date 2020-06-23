---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Comparison Operators

---
## Content

The `input` variable will be used to help the robot decide which action to take. When the value is `0` it will do nothing.

```
IF (input == 0) THEN
    Direct robot to do nothing.
```

Wait, double equal signs? What's that? It's called a boolean condition and it can only have **two results**: `true` or `false`.

The `==` sign means nothing more than **is equal to**. We are comparing the value of `input` with `0`, which is `true`.

> 💡 Don't mix up `=` and `==`! A single equal sign (`=`) is used for **assigning values**. A double equal sign (`==`) is used for **comparing values**.

The `true` and `false` values are not strings. They actually belong to the **boolean** data type and it's what makes conditions possible. 

You are not limited to the equality operator. Here is a table of all **comparison operators**:

| Operator |         Meaning         |
|:--------:|:-----------------------:|
|     <    |        less than        |
|     >    |       higher than       |
|    <=    |  less than or equal to  |
|    >=    | higher than or equal to |
|    ==    |         equal to        |
| != or <> |       not equal to      |

---
## Practice

What do you think the robot will do?

```plain-text
hungry = false

IF (hungry) THEN
    Make a grilled cheese sandwich.
```

???

* It won't make a sandwich.
* It will make a sandwich.

---
## Revision

The boolean type can only have `true` and ??? as values.

* false
* negative
* untrue