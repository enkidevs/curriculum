---
author: kapnobatai136

type: normal

category: must-know

aspects:
  - introduction

---

# Functions I

---
## Content

More often than not, a computer program will have many lines of text (think thousands). Imagine you are maintaining one such program and you realise that there is a problem with it. When you try to find it, you have to go through all those lines.

To prevent this issue, modular programming is used. This means that you split your functionality into individual methods. These are called functions, and the aim is for them to be independent; they should execute only one aspect of the desired functionality.

Let's take a look at an example. It's Saturday afternoon, and you're ready for a margarita 🍹.

The recipe says:

```plain-text
Ingredients:
- 50ml tequila
- 25ml lime juice
- 20ml triple sec
- salt
- two lime wedges
- one glass

Instructions:
- Sprinkle salt on a small plate
- Rub one wedge of a lime along the rim of the glass
- Dip the glass in salt so that the entire rim is covered

- Fill a cocktail shaker with ice
- Add tequila, lime juice, triple sec
- Shake

- Strain the mix into the prepared glass
- Garnish with lime wedge
```

You just remembered that you have a robot sitting in your garage, so why not teach it how to make your cocktails?

First, you'll have to create *functions* from the instructions. Starting with the first batch:

```plain-text
Function prepare glass
    Pass In: one glass, one small plate, one lime wedge, salt.
    Direct the robot to prepare the small plate and sprinkle salt on it.
    Direct the robot to rub the lime wedge on the rim of the glass.
    Direct the robot to dip the glass in the salt.
    Pass Out: a glass with salted rim.
Endfunction
```

> 💡 What you've just witnessed is called **Pseudocode**. It's just a way of writing code without actually writing any code. When you'll start learning a specific language, defining functions will be explained.
