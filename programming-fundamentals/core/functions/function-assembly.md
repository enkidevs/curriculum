---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Function Assembly

---
## Content

Your robot is almost ready! The last step is chaining all the functions. You wouldn't want it to prepare the cheese after it fried the sandwich.

```plain-text
Function make a sandwich
  Pass In: prepare ingredients, assemble sandwich, fry sandwich.
  Direct robot to execute prepare ingredients.
  Direct robot to execute assemble sandwich.
  Direct robot to execute fry sandwich.
  Pass Out: grilled cheese sandwich.
Endfunction
```

> 💡 You should give your functions explanatory names. A good rule is to use verb-noun combinations (`prepare ingredients`). If your functions requires two verbs or nouns for its identifier, you should probably split it into separate functions.

![gif-of-spongebob-dusting-off-hands](https://img.enkipro.com/cdf13a221aa155022ba5eb2031e27cde.gif)

That's it, you robot is ready to start making you grilled cheese sandwiches.

---
## Practice

Complete the gaps such that your robot will cook your lunch:

```plain-text
??? cook lunch
    ???: serve lunch, cook ingredients, prepare ingredients.
    ???
    ???
    ???
    Pass Out: lunch.
???
```

* Function
* Pass In
* Prepare ingredients function
* Cook ingredients function
* Serve lunch function.
* Endfunction

---
## Revision

Complete the gaps such that your robot will cook your breakfast:

```plain-text
??? cook breakfast
    ???: serve breakfast, cook ingredients, prepare ingredients.
    ???
    ???
    ???
    Pass Out: breakfast.
???
```

* Function
* Pass In
* Prepare ingredients
* Cook ingredients
* Serve breakfas
* Endfunction