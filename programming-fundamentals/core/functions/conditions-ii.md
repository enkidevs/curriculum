---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Conditions II

---
## Content

Now, knowing that `0` means do nothing, we'll want the robot to take an action if any button between `1 - 9` is pressed:

```plain-text
IF (input == 0) THEN
    Direct robot to do nothing.
ELSE
    Direct robot to make a margarita.
```

You have now chained two conditions. If the `input` is anything else than 0, then the robot will start making a margarita.

The next step is creating different *paths*:
- `0` for doing nothing
- `1 - 3` for breakfast
- `4 - 6` for lunch
- `7 - 9` for dinner

```plain-text
IF (input == 0) THEN
    Direct robot to do nothing.
ELSE IF (input >= 1 AND input <= 3) THEN
    Direct robot to make breakfast.
ELSE IF (input >= 4 AND input <= 7) THEN
    Direct robot to make lunch.
ELSE
    Direct robot to make dinner.
```

You can chain multiple conditions using `ELSE IF`. If the `input` is `3` then the robot will make breakfast, **and it won't even check the other conditions** because that one evaluated to `true`.

Another important concept that we introduced is the `AND` logical operator. It is one of the main three used, and it helps you to build complex conditions. Here are all the boolean operators:

| Operator |                 Meaning                 |
|:--------:|:---------------------------------------:|
|    AND   | both conditions must evaluate to `true` |
|    OR    |  any condition must evaluate to `true`  |
|    NOT   |          negates the condition          |

---
## Practice


---
## Revision