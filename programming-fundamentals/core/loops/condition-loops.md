---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Condition Loops

---
## Content

Condition controlled loops are slightly different than counter loops. Instead of running until the counter reaches a certain value, you set a condition and the loop will run **while the condition evaluated to `true`**.

There are two types of condition controlled loops:
- the condition is checked at the beginning `WHILE ... DO`
- the condition is checked at the end `DO ... WHILE`

### WHILE..DO

This is very useful when you want a piece of code to run while a condition is true. The condition must first evaluate to `true` and then the code will run.

```plain-text
age = 17

WHILE age < 21
    Drink juice.
    Increase age by 1.
Endwhile
```

This will check that the age is smaller than 21 (which is true) followed by letting you drink juice. Every iteration we increase the age, so after a while you won't have to drink juice.

### DO..WHILE

The difference here is that the code is ran once, before the condition is evaluated:

```plain-text
age = 33

DO
    Drink juice.
WHILE age < 21
```

In this case, you would still have to drink juice for the first iteration, before the code realises you are older than 21.

---
## Practice

Complete the definitions:

```plain-text
DO..WHILE - ???
WHILE..DO - ???
```

* Runs the code once then checks the condition.
* Checks the condition then runs the code.