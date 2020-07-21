---
author: kapnobatai136

type: normal

category: must-know

---

# Robot, Grill Me A Sandwich

---
## Content

The robot instructions are almost done! We're getting hungry.

Let's do the part 3 of our recipe[1] now, the grilling of the sandwich:

```plain-text
FUNCTION grill_sandwich
  INPUT sandwich, pan, plate
  INSTRUCT heated_pan = preheat_the_pan(pan)
  INSTRUCT fried_sandwich = fry_the_sandwich_on_each_side(sandwich, heated_pan, "3min")
  INSTRUCT sandwich_on_plate = place_sandwich_on_the_plate(fried_sandwich, plate)
  OUTPUT sandwich_on_plate
ENDFUNCTION
```

> 💡 We can give input values to functions directly, they don't have to be variables. If you notice above, we passed in the duration string `"3min"` directly into the `fry_the_sandwich_on_each_side` function.

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