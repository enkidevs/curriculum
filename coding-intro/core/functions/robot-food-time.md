---
author: kapnobatai136

type: normal

category: must-know

---

# Robot, Food Time

---
## Content

The recipe[1] instructions are complete.

Now it's time to run the functions we create as commands for the robot.

The final part of the code we're giving the robot is:

```plain-text
FUNCTION make_a_grill_cheese_sandwich
  INPUT cheese, grater, bowl, bread, butter, pan, plate
  INSTRUCT cheese_bowl, sliced_bread = prepare_ingredients(cheese, grater, bowl, bread)
  INSTRUCT sandwich = build_sandwich(cheese_bowl, sliced_bread, butter)
  INSTRUCT sandwich_on_plate = grill_sandwich(sandwich, pan, plate)
  OUTPUT sandwich_on_plate
ENDFUNCTION
```

> 💡 The order in which we call the functions matters! You wouldn't want it to prepare the cheese after it fried the sandwich.

Now for the last part.

Let's tell the robot to run the `make_a_grill_cheese_sandwich` function:

```plain_text
INSTRUCT make_a_grill_cheese_sandwich(cheese, grater, bowl, bread, butter, pan, plate)
```

That's it! Bon Appétit!

> 💡 You should give your functions explanatory names. A good rule is to use verb-noun combinations (`prepare_ingredients`). If your functions require two verbs or nouns for its identifier, it's probably doing too much and you should split it into separate functions.

---
## Footnotes

[1: Grilled Cheese Sandwich Recipe]

The recipe says:

Ingredients:
- cheese
- bread
- butter
- plate
- bowl

Instructions:

1. prepare the ingredients
  - Grate the cheese in a bowl
  - Cut the bread into slices

2. build the sandwich
  - Butter the bread on both sides
  - Add the cheese to the sandwich

3. grill the sandwich
  - Preheat a pan
  - Fry the sandwich for three minutes on each side (or until golden brown)