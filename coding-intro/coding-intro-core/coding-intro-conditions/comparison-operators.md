---
author: kapnobatai136
type: normal
category: must-know
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

# Comparison Operators


---

## Content

The `input` variable will be used to help the robot decide which action to take. When the value is `0` it will do nothing.

```plain-text
IF (input == 0) THEN
  INSTRUCT do_nothing()
```

Wait, double equal signs? What's that? 

This is called an equality operator and it can only have **two results**: `true` or `false`.

> 💡 Don't mix up `=` and `==`! 

The `==` sign means nothing more than **is equal to**. 

If `A == B` is `true` that means the value of `A` and value of `B` are equal. 

If `A == B` is `false`, then their values are different.

On the other hand, a single equal sign (`=`) is used for **assigning values** (i.e. putting values into a box).

You are not limited to the equality operator. Here is a table of the most commonly used **comparison operators**:

| Operator |         Meaning         |
| :------: | :---------------------: |
|     <    |        less than        |
|     >    |       higher than       |
|    <=    |  less than or equal to  |
|    >=    | higher than or equal to |
|    ==    |         equal to        |
| != or <> |       not equal to      |


---

## Practice

What do you think the robot will do here?

```plain-text
hungry = false

IF (hungry == true) THEN
  INSTRUCT make_a_grill_cheese_sandwich(
    cheese, 
    grater, 
    bowl, 
    bread, 
    butter, 
    pan, 
    plate
  )
```

???

- It won't make a sandwich.
- It will make a sandwich.


---

## Revision

The boolean type can only have true and ??? as values.

- false
- negative
- untrue
