---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Counter Loops

---
## Content

You might've already heard about these, they are also called `for loops`. The idea behind these loops is that you create a counter variable, a maximum value for that counter, and the increment step.

```
FOR counter = 1 to 10
    Direct robot to brush teeth
Endfor
```

You're not limited to numbers. You could, for example, use values in a list. Say you have al ist of all the months, and you want an action repeated each month. You would write:

```plain-text
months = ['January', 'February', ...]

FOR each month of months
    Remind me to pay the bills
Endfor
```

> 💡 The syntax differs for each programming language. When you'll start learning a specific one, loop functionality will be explained in details.
