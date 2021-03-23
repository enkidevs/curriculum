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
    - type-in-the-gap
  context: standalone
---

# DO..WHILE


---

## Content

In a `DO..WHILE` loop, you start by running the code for the first time, followed by checking a condition. If that evaluates to `true`, you run the code again.

Going back to our sandwiches, let's say you want to make sure there is always one sandwich available.

```plain-text
hungry = true
sandwiches_made = 0

DO
  INSTRUCT make_a_grill_cheese_sandwich(
    cheese, 
    grater, 
    bowl, 
    bread, 
    butter, 
    pan, 
    plate
  )
  INSTRUCT sandwiches_made = sandwiches_made + 1
WHILE (
  hungry == true AND 
  sandwiches_made <= 3
)
```

Now, you'll make the sandwich, and later decide if more sandwiches are required (based on your condition).


---

## Practice

In a `DO..WHILE` loop, which happens first?

???

- The code is run.
- The condition is checked.


---

## Revision

What is the value of the variable `sandwiches_made` when the code stops running?

```plain-text
sandwiches_made = 0

DO (
  INSTRUCT sandwiches_made = sandwiches_made + 1
  INSTRUCT make_a_sandwich()
) WHILE (sandwiches_made < 4)
```

???

- 5
- 4
- 0
- 3
