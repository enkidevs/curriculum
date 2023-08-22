---
author: Caleb-Cha
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

# Functions in Studio
---

## Content
Functions are an essential part of coding, and remains true for Roblox Studio. In studio, functions can be used to run code in a specific manner and is accessible to numerous uses with different parameters.

For instance, a developer could create a function that adds tax to every purchase in an in-game store:

```lua
function addTax(a, b)
  return a * b
end
purchaseCostTotal = 50
taxGST = 1.13
addTax(purchaseCostTotal,taxGST)  -- returns the total cost that adds tax to every purchase
```
Studio also provides built-in functions in the form of methods: a type of function that uses the object, self, as an argument and a colon to call the method. 

```lua
baseplateVariable = game.Workspace.BasePlate
baseplateVariable:Destroy()
--the object (self) is the variable, and the Desroy method is called using the colon
-- the Destroy method deletes the baseplate.
```

These built-in functions can be found in the object browser.

![object-browser-simple-infographic](https://img.enkipro.com/a6647a6fa5097bd5111f6105e1b9e807.png)
---

## Practice

A method is a type of function that uses the ??? as an argument, and a ??? to call the method itself.

- object itself
- colon
- script
- period
- semi-colon
- event


---

## Revision

A method is a type of function that uses the ??? as an argument, and a ??? to call the method itself.

- object itself
- colon
- script
- period
- semi-colon
- event