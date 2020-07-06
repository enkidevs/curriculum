---
author: kapnobatai136

type: normal

category: must-know

---

# Function Assembly

---
## Content

Your robot is almost ready! The last step is calling all the functions.

> 💡 The order in which we call the functions matters! You wouldn't want it to prepare the cheese after it fried the sandwich.

```plain-text
FUNCTION make_a_sandwich
  INPUT: prepare_ingredients, assemble_sandwich, fry_sandwich.
  Instruct robot to execute prepare_ingredients.
  Instruct robot to execute assemble_sandwich.
  Instruct robot to execute fry_sandwich.
  OUTPUT: grilled cheese sandwich.
ENDFUNCTION
```

> 💡 You should give your functions explanatory names. A good rule is to use verb-noun combinations (`prepare_ingredients`). If your functions require two verbs or nouns for its identifier, it's probably doing too much and you should split it into separate functions

![gif-of-spongebob-dusting-off-hands](https://img.enkipro.com/cdf13a221aa155022ba5eb2031e27cde.gif)

That's it! Your robot is ready to start making your grilled cheese sandwiches.

---
## Practice

Complete the gaps such that your robot will cook your lunch:

```plain-text
??? cook_lunch
  ???: serve_lunch, cook_ingredients, prepare_ingredients.
  ???
  ???
  ???
  OUTPUT: lunch.
???
```

* FUNCTION
* INPUT
* prepare_ingredients
* cook_ingredients
* serve_lunch
* ENDFUNCTION

---
## Revision

Complete the gaps such that your robot will cook your breakfast:

```plain-text
??? cook_breakfast
  ???: serve_breakfast, cook_ingredients, prepare_ingredients.
  ???
  ???
  ???
  OUTPUT: breakfast.
???
```

* FUNCTION
* INPUT
* prepare_ingredients
* cook_ingredients
* serve_breakfast
* ENDFUNCTION