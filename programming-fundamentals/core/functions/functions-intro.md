---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Functions Intro

---
## Content

More often than not, a computer program will have many lines of text (think thousands). 

Imagine you are maintaining one such program and you realise that there is a problem with it. When you try to find it, you have to go through all those lines.

To prevent this issue, modular programming is used. This means that you split your functionality into individual methods. 

These are called functions, and the aim is for them to be independent; they should execute only one aspect of the desired functionality.

Let's take a look at an example. It's Saturday afternoon, and you're ready for a grilled cheese sandwich 🧀.

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

You just remembered that you have a robot sitting in your garage, so why not teach it how to make your gilled cheese sandwich?

First, you'll have to create *functions* from the instructions. Starting with the first batch:

```plain-text
Function prepare ingredients
  Pass In: cheese, grater, bowl, bread.
  Direct the robot to prepare the bowl and grater.
  Direct the robot to grate cheese in the bowl.
  Direct the robot to slide the bread.
  Pass Out: a bowl with cheese, sliced bread.
Endfunction
```

The items in the `Pass In` row are usually called arguments. They represent data that will be available and used in the function.

> 💡 What you've just witnessed is called **Pseudocode**. It's just a way of writing code without actually writing any code. When you'll start learning a specific language, defining functions will be explained.

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
* Pass In
* Pass Out
* Endfunction

---
## Revision

The aim of modular programming is to split ??? into individual ???.

* functionality
* methods
* variables
* markings