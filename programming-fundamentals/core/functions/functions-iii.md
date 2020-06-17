---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Functions III

---
## Content

Your robot is almost ready! The last step is chaining all the functions. You wouldn't want it to prepare the cheese after it fried the sandwich.

```plain-text
Function make a grilled cheese
    Pass In: prepare ingredients, assemble sandwich, fry sandwich.
    Direct robot to execute prepare ingredients.
    Direct robot to execute assemble sandwich.
    Direct robot to execute fry sandwich.
    Pass Out: nothing.
Endfunction
```

> 💡 You should give your functions explanatory names. A good rule is to use verb-noun combinations (`prepare ingredients`). If your functions requires two verbs or nouns for its identifier, you should probably split it into separate functions.

![gif-of-spongebob-dusting-off-hands](https://img.enkipro.com/cdf13a221aa155022ba5eb2031e27cde.gif)

"Robot, go **make a grilled cheese**". Between the beeping robot sounds, you notice some foulplay. Uh-oh, we instructed the robot to butter the bread instead of the slices 😅.

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
## Revision

Complete the gaps such that your robot will cook your lunch:

```plain-text
??? cook lunch
    ???: serve lunch function, cook ingredients function, prepare ingredients function.
    ???
    ???
    ???
    Pass Out: nothing.
???
```

* Function
* Pass In
* Prepare ingredients function
* Cook ingredients function
* Serve lunch function.
* Endfunction