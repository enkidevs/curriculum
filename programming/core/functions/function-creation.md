---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Function Creation

---
## Content

Let's take the previous example[1] step by step:
1. You define a *function* called **prepare ingredients**
2. You **input** arguments (ingredients). These are necessary for the function to complete
3. You write all the instructions for the robot
4. You **output** the result. In this case, it's a bowl with cheese and sliced bread.

On the same note we'll write two more functions:

```plain-text
Function assemble sandwich
  Input: bown with cheese, sliced bread, butter.
  Direct the robot to butter the bread.
  Direct the robot to add the cheese to each slice.
  Direct the robot to combine the slices.
  Output: sandwich with butter and cheese.
Endfunction

Function finish grilled cheese
  Input: sandwich with butter and cheese, pan, plate.
  Direct robot to preheat the pan.
  Direct robot to fry the sandwich on each side.
  Direct robot to place the grilled cheese sandwich on the plate.
  Output: grilled cheese sandwich.
Endfunction
```

> 💡 The `Output` field represents something that we want to use at a later point. **This is also commonly refered to as `returning`**.

---
## Practice

Write a function called `fill glass` that takes `glass` and `water` as arguments:

```plain-text
??? ???
  ???: glass, water
  ...
  ???: glass full of water.
Endfunction
```

* Function
* fill glass
* Input
* Output

---
## Revision

Complete the function such that it returns `ice`:

```plain-text
??? freeze water
  Input: ???.
  ...
  Output: ???.
Endfunction
```

* Function
* water
* ice

---
## Footnotes

[1:Previous Example]
```plain-text
Function prepare ingredients
  Input: cheese, grater, bowl, bread.
  Direct the robot to prepare the bowl and grater.
  Direct the robot to grate cheese in the bowl.
  Direct the robot to slide the bread.
  Output: a bowl with cheese, sliced bread.
Endfunction
```