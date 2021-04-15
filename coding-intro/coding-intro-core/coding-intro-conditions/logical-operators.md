---
author: kapnobatai136
type: normal
category: must-know
aspects:
  - workout
  - deep
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Logical Operators


---

## Content

We have quite a few leftover numbers for our robot to handle. 

Since we're not using them at the moment, let's use groups of numbers for the *paths*:

- 1 - 3 for white bread
- 4 - 6 for whole wheat bread
- 7 - 9 for rye bread

To do this, we'll have to use the `AND` logical operator:

```plain-text
IF (input == 0) THEN
  INSTRUCT do_nothing()
ELSE IF (
  input >= 1 AND 
  input <= 3
) THEN
  ...
ELSE IF (
  input >= 4 AND 
  input <= 6
) THEN
  ...
ELSE IF (
  input >= 7 AND 
  input <= 9
) THEN
  ...
```

`AND` is one of the main three logical operators, and it helps you to build conditions. 

Here are the most commonly used logical operators:

| Operator |          Meaning          |
| :------: | :-----------------------: |
|    AND   | all conditions are `true` |
|    OR    |  any condition is `true`  |
|    NOT   |   negates the condition   |


---

## Practice

Which of these is **not** a logical operator?

???

- IF
- AND
- NOT
- OR


---

## Revision

Fill in the gaps:

```plain-text
??? - negates the condition
??? - all conditions must evaluate to true
??? - any condition must evaluate to true
```

- NOT
- AND
- OR
