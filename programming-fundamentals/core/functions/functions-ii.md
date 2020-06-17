---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Functions II

---
## Content

Let's take the previous example[1] step by step:
1. You define a *function* called **prepare ingredients**
2. You **pass in** arguments (ingredients). These are necessary for the function to complete
3. You write all the instructions for the robot
4. You **pass out** the result. In this case, it's a bowl with cheese and sliced bread.

On the same note we'll write two more functions:

```plain-text
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
    Direct robot to place the grilled cheese sandwich on the place.
    Pass Out: nothing.
Endfunction
```

> 💡 The `Pass Out` field represents something that we want to use at a later point. **This is also commonly refered to as `returning`**. In the `finish grilled cheese` function, because we instruct the robot to serve the cocktail, we don't pass out anything.

---
## Practice

Write a function called `fill glass` that takes `glass` and `water` as arguments:

```plain-text
??? ???
    ???: glass, water
    ...
    ???: nothing.
Endfunction
```

* Function
* fill glass
* Pass In
* Pass Out

---
## Revision

Complete the function such that it returns `ice`:

```plain-text
??? freeze water
    Pass In: ???.
    ...
    Pass Out: ???.
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
    Pass In: cheese, grater, bowl, bread.
    Direct the robot to prepare the bowl and grater.
    Direct the robot to grate cheese in the bowl.
    Direct the robot to slide the bread.
    Pass Out: a bowl with cheese, sliced bread.
Endfunction
```