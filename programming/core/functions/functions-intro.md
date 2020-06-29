---
author: kapnobatai136

type: normal

category: must-know

---

# Functions Intro

---
## Content

More often than not, a computer program will have many lines of text (think thousands). 

Imagine you are maintaining one such program and you realise that there is a problem with it. In order to find it, you'd have to go through all those lines.

One way you can better organize your code is by grouping functionality together.

> Code is grouped together into functions.

Let's take a look at an example. It's Saturday afternoon, and you're ready for a grilled cheese sandwich 🧀. Here is the recipe[1].

You just remembered that you have a robot sitting in your garage, so why not teach it how to make your gilled cheese sandwich?

First, you'll have to create *functions* from the instructions. Starting with the first batch:

```plain-text
Function prepare ingredients
  Input: cheese, grater, bowl, bread.
  Direct the robot to prepare the bowl and grater.
  Direct the robot to grate cheese in the bowl.
  Direct the robot to slide the bread.
  Output: a bowl with cheese, sliced bread.
Endfunction
```

The items in the `Input` row are usually called arguments. They represent data that will be available and used in the function.

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

* Function
* Input
* Output
* Endfunction

---
## Revision

The **arguments** are written in what field:

???

* Input
* Output
* Function

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