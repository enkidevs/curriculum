---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Conditions I

---
## Content

Have you ever wondered how computer programs can have the same code with different outcomes? Welcome to the programmer's crossroad.

You can write code in such a way that you get different outcomes or actions depending on a condition.

Remember that grilled cheese making robot that we programmed in the last post? Let's repurpose it as our personal cook.

The robot has a small number pad which can take numbers between `0` and `9` as inputs.

```plain-text
input = 0
```

> ❔ What type is the `input` variable?

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
age = 17
IF (age >= 21) THEN
    Direct robot to drink a beer.
```

???

* It won't drink a beer.
* It will drink a beer.

---
## Revision

The boolean type can only have `true` and ??? as values.

* false
* negative
* untrue