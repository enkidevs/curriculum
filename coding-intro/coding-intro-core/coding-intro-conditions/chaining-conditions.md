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
  context: standalone
---

# Chaining Conditions


---

## Content

Now, knowing that `0` means "do nothing", we'll want the robot to take an action if `input` has any other value:

```plain-text
IF (input == 0) THEN
  INSTRUCT do_nothing()
ELSE
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

> 💡 Functions don't need to always have arguments.

You have now chained two conditions. 

If the `input` is anything other than `0`, then the robot will start making a grilled cheese sandwich.

The next step is to create different *paths*:

- `0` for doing nothing
- `1` for white bread
- `2` for whole wheat bread
- `3` for rye bread

As a reminder, here is the instruction that led to making a grilled cheese sandwich:

```plain-text
INSTRUCT make_a_grill_cheese_sandwich(cheese, grater, bowl, bread, butter, pan, plate)
```

To make the sandwich with a different type of bread, we'll create a variable named `bread` which stores our type.

To make the type change depending on the `input` value we would type:

```plain-text
IF (input == 0) THEN
  INSTRUCT do_nothing()
ELSE IF (input == 1) THEN
  INSTRUCT bread = "white bread"
ELSE IF (input == 2) THEN
  INSTRUCT bread = "whole-wheat bread"
ELSE IF (input == 3) THEN
  INSTRUCT bread = "rye bread"

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

You can chain multiple conditions using `ELSE IF`. If the `input` is `1` then the robot will use white bread, **and it won't even check the other conditions** because that one evaluated to `true`.

> 💡 The final `ELSE` clause is optional.


---

## Practice

Complete the condition such that you only make a sandwich if you're hungry:

```plain-text
hungry = ???

??? (??? == true) THEN
  INSTRUCT make_a_grill_cheese_sandwich(
    cheese, 
    grater, 
    bowl, 
    bread, 
    butter, 
    pan, 
    plate
  )
???
```

- true
- IF
- hungry
- ENDIF


---

## Revision

Complete the following condition chain:

```plain-text
??? condition_1 THEN
  INSTRUCT do_something()
??? condition_2 THEN
  INSTRUCT do_something_else()
???
  INSTRUCT do_nothing()
```

- IF
- ELSE IF
- ELSE
