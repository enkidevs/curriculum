---
author: kapnobatai136
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
    - type-in-the-gap
  context: standalone
---

# Robot, Assemble the Sandwich


---

## Content

Let's continue preparing the sandwich-making instructions for our robot by writing a function to perform the second step of our recipe[1] - building out the sandwich from the ingredients.

```plain-text
FUNCTION build_sandwich
  INPUT cheese_bowl, sliced_bread, butter
  INSTRUCT buttered_slices = butter_the_bread(sliced_bread, butter)
  INSTRUCT buttered_slices_with_cheese = add_the_cheese_to_each_slice(cheese_bowl, buttered_slices)
  INSTRUCT sandwich = combine_slices(buttered_slices_with_cheese)
  OUTPUT sandwich
ENDFUNCTION
```

Whew! That's a lot of code! 

Computers are 100% literal[2] like that. We have to spell out everything **exactly** for them. Otherwise, they won't understand what we're asking of them.

For example, in the code above, take a look at the last two lines of the function body:

```plain-text
INSTRUCT sandwich = combine_slices(buttered_slices_with_cheese)
OUTPUT sandwich
```

If you forgot to save the output of `combine_slices` into the variable `sandwich`:

```plain-text
INSTRUCT combine_slices(buttered_slices_with_cheese)
OUTPUT sandwich
```

The computer wouldn't know what to do! It doesn't know what `sandwich` variable is unless you tell it.


---

## Practice

Let's practice function creation!

Write a function called `fill_glass` that takes in `glass` and `water`, calls `pour` function to pour the `water` into the `glass` and produces a `glass_of_water` as the result:

```plain-text
??? ???
  ??? glass, water
  ??? glass_of_water = ???(glass, water)
  ??? glass_of_water
ENDFUNCTION
```

- FUNCTION
- fill_glass
- INPUT
- INSTRUCT
- pour
- OUTPUT


---

## Revision

Write a function called `fill_glass` that takes in `glass` and `water`, calls `pour` function to pour the `water` into the `glass` and produces a `glass_of_water` as the result:

```plain-text
??? ???
  ??? glass, water
  ??? glass_of_water = ???(glass, water)
  ??? glass_of_water
ENDFUNCTION
```

- FUNCTION
- fill_glass
- INPUT
- INSTRUCT
- pour
- OUTPUT


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

[2: 💡 Code Must Be Exact]

In some languages, instructions usually end with a semicolon `;`. 

This means that the instruction:

```plain-text
study_buddy = "enki"
```

will not work in those languages! 

We have to end it with a `;` like this:

```plain-text
study_buddy = "enki";
```
