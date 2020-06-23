---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Debugging

---
## Content

"Robot, go **make a sandwich**". Between the beeping robot sounds, you notice some foulplay. 

Take a look at the functions here and see if you can spot anything wrong. Discuss your findings in the comments.

> ❗ Remember, computers take all your instructions literally, so you have to be very specific.

Uh-oh, we instructed the robot to butter the bread instead of the slices 😅.

Instead of searching through all the instruction, you know that the issue is in the `assemble sandwich` function:

```plain-text
Function assemble sandwich
    Pass In: bown with cheese, sliced bread, butter.
    Direct the robot to butter the bread slices.
    ...
Endfunction
```

Done. You've fixed your first bug 🐛, and can now enjoy the rest of your Saturday with a grilled cheese. Learning functions couldn't get better!

To recap, functions are useful because:
- they break down big programs into "blocks"
- they increase readability and organization
- they make testing and identifying bugs much easier
