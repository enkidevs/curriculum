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

Take a look at the functions here[1] and see if you can spot anything wrong. Discuss your findings in the comments.

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

---
## Footnotes

[1:Functions]

```plain-text
Function prepare ingredients
  Pass In: cheese, grater, bowl, bread.
  Direct the robot to prepare the bowl and grater.
  Direct the robot to grate cheese in the bowl.
  Direct the robot to slide the bread.
  Pass Out: a bowl with cheese, sliced bread.
Endfunction

Function assemble sandwich
  Pass In: bown with cheese, sliced bread, butter.
  Direct the robot to butter the bread.
  Direct the robot to add the cheese to each slice.
  Direct the robot to combine the slices.
  Pass Out: sandwich with butter and cheese.
Endfunction

Function finish grilled cheese
  Pass In: sandwich with butter and cheese, pan, plate.
  Direct robot to preheat the pan.
  Direct robot to fry the sandwich on each side.
  Direct robot to place the grilled cheese sandwich on the plate.
  Pass Out: grilled cheese sandwich.
Endfunction
```