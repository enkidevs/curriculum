---
author: kapnobatai136

type: normal

category: must-know

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
FUNCTION assemble_sandwich
  INPUT: bowl with cheese, sliced bread, butter.
  Instruct the robot to butter the bread.
  Instruct the robot to add the cheese to each slice.
  Instruct the robot to combine the slices.
  OUTPUT: sandwich with butter and cheese.
ENDFUNCTION

FUNCTION finish_grilled_cheese
  INPUT: sandwich with butter and cheese, pan, plate.
  Instruct robot to preheat the pan.
  Instruct robot to fry the sandwich on each side.
  Instruct robot to place the grilled cheese sandwich on the plate.
  OUTPUT: grilled cheese sandwich.
ENDFUNCTION
```

> 💡 The `OUTPUT` field represents something that we want to use at a later point. **This is also commonly referred to as `returning`**.

---
## Practice

Write a function called `fill_glass` that takes `glass` and `water` as arguments:

```plain-text
??? ???
  ???: glass, water
  ...
  ???: glass full of water.
ENDFUNCTION
```

* FUNCTION
* fill_glass
* INPUT
* OUTPUT

---
## Revision

Complete the function such that it returns `ice`:

```plain-text
??? freeze_water
  INPUT: ???.
  ...
  OUTPUT: ???.
ENDFUNCTION
```

* FUNCTION
* water
* ice

---
## Footnotes

[1:Previous Example]
```plain-text
FUNCTION prepare_ingredients
  INPUT: cheese, grater, bowl, bread.
  Instruct the robot to prepare the bowl and grater.
  Instruct the robot to grate cheese in the bowl.
  Instruct the robot to slide the bread.
  OUTPUT: a bowl with cheese, sliced bread.
ENDFUNCTION
```