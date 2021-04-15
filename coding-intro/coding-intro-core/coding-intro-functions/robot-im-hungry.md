---
author: kapnobatai136
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# Robot, I'm Hungry!


---

## Content

It's Saturday afternoon, and you're ready for a grilled cheese sandwich 🧀. Here is the recipe[1].

Instead of making the sandwich yourself, you remembered that you have a robot sitting in your garage that can do the job for you.

Let's write some code to tell our robot how to make a sandwich!

To get us started, start with the preparation of the ingredients first.

```plain-text
FUNCTION prepare_ingredients
  INPUT cheese, grater, bowl, bread
  INSTRUCT cheese_bowl = grate_cheese_in_the_bowl(grater, cheese, bowl)
  INSTRUCT sliced_bread = slice_the_bread(bread)
  OUTPUT cheese_bowl, sliced_bread
ENDFUNCTION
```

The function above is called `prepare_ingredients` and takes in `cheese`, `grater`, `bowl`, and `bread` as inputs and returns a `cheese_bowl` and `sliced_bread` as output.

`prepare_ingredients` calls two functions within its *body*:

- `grate_cheese_in_the_bowl` with `grater`, `cheese` and `bowl` as the input and stores the output into the `cheese_bowl` variable
- `slice_the_bread` with `bread` as the input and stores the output into the `sliced_bread` variable


---

## Practice

Functions can call other functions.

???

- true
- false


---

## Revision

Which of these terms isn't correct in this sentence:

??? a function by giving it data to produce a result

- play
- call
- execute
- run
- invoke


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
