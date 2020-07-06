---
author: kapnobatai136

type: normal

category: must-know

---

# Functions Intro

---
## Content

More often than not, a computer program will have many lines of text (likely thousands). 

Imagine you are maintaining a program like this and you realize that there is a problem with it. To find it, you'd have to go through all those lines.

One way you can better organize your code is by grouping functionality together.

> Code is grouped together into functions.

Let's take a look at an example. It's Saturday afternoon, and you're ready for a grilled cheese sandwich 🧀. Here is the recipe[1].

You just remembered that you have a robot sitting in your garage, so why not teach it how to make your grilled cheese sandwich?

First, you'll have to create *functions* from the instructions. Starting with the first batch:

```plain-text
FUNCTION prepare_ingredients
  INPUT: cheese, grater, bowl, bread.
  Instruct the robot to prepare the bowl and grater.
  Instruct the robot to grate cheese in the bowl.
  Instruct the robot to slide the bread.
  OUTPUT: a bowl with cheese, sliced bread.
ENDFUNCTION
```

The items in the `Input` row are usually called parameters. **A parameter** is a variable inputted in the function. The value of a parameter is called **an argument**.

---
## Practice

Complete the following function so that the robot will slice the bread:

```plain-text
??? slice bread
  ???: bread, knife.
  Direct the robot to slice the bread.
  ???: sliced bread.
???
```

* FUNCTION
* INPUT
* OUTPUT
* ENDFUNCTION

---
## Revision

The **parameters** are written in what field:

???

* INPUT
* OUTPUT
* FUNCTION

---
## Footnotes

[1:Recipe]

The recipe says:

```plain-text
Ingredients:
- cheese
- bread
- butter
- plate
- bowl

Instructions:
- Shred the cheese in a small bowl
- Cut the bread into slices

- Butter the bread on both sides
- Add the cheese to the sandwich

- Preheat a pan
- Fry the sandwich for three minutes on each side (or until golden brown)
```