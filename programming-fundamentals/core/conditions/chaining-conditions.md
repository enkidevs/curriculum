---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Chaining Conditions

---
## Content

Now, knowing that `0` means do nothing, we'll want the robot to take an action if any button between `1 - 9` is pressed:

```plain-text
IF (input == 0) THEN
    Direct robot to do nothing.
ELSE
    Direct robot to make a grilled cheese.
```

You have now chained two conditions. If the `input` is anything else than 0, then the robot will start making a grilled cheese sandwich.

The next step is creating different *paths*:
- `0` for doing nothing
- `1` for white bread
- `2` for whole wheat bread
- `3` for rye bread

```plain-text
IF (input == 0) THEN
    Direct robot to do nothing.
ELSE IF (input == 1) THEN
    Direct robot to make grilled cheese sandwich using white bread.
ELSE IF (input == 2) THEN
    Direct robot to make grilled cheese sandwich using whole wheat bread.
ELSE IF (input == 3) THEN
    Direct robot to make grilled cheese sandwich using rye bread.
```

You can chain multiple conditions using `ELSE IF`. If the `input` is `3` then the robot will use white bread, **and it won't even check the other conditions** because that one evaluated to `true`.

> 💡 The final `ELSE` clause is option whether you chain conditions or use only one.

---
## Practice

Complete the condition such that you only make a sandwich if you're hungry:

```plain-text
hungry = ???

??? (???) THEN
    Make a sandwich
???
```

* true
* IF
* hungry
* ENDIF

---
## Revision

Complete the following condition chain:

```plain-text
??? condition 1 THEN
    do something
??? condition 2 THEN
    do something
???
    do something
```

* IF
* ELSE IF
* ELSE