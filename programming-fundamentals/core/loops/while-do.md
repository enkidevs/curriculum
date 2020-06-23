---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - workout
  - deep

---

# WHILE..DO

---
## Content

The `WHILE..DO` loop is very useful when you want a piece of code to run **after a condition is evaluated to true**. 

The rule is that you **must** check the condition first, and only after that can the code be ran.

Let's take a look at an example:

```plain-text
hungry = true
sandwiches_made = 0

WHILE (
  hungry OR 
  sandwiches_made <=3
  )
    Make sandwhich.
    Increase sandwiches_made by 1.
ENDWHILE
```

We created a complex condition: if the `hungry` variable is equal to `true` **or** less than 4 sandwiches were made, you make a sandwich.

---
## Practice

Complete this loop such that it runs only if `number` is between `1` and `100` (inclusive):

```plain-text
??? (
  number ??? 1 
  AND ??? <= 100
)
  ...
???
```

* WHILE
* >=
* number
* ENDWHILE
* FOR
* ENDFOR
* num

---
## Revision

In a `WHILE..DO` loop, which happens first?

???

* The condition is checked.
* The code is ran.