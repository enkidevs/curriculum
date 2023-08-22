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
Functions are an essential part of coding, and remains true for Roblox Studio. In studio, functions can be used to run code in a specific manner and is **accessible to numerous uses with different parameters**.

For instance, a developer could create a function that adds tax to every purchase in an in-game store:

```lua
function addTax(a, b)
  return a * b
end
purchaseCostTotal = 50
taxCanadaGST = 1.13
addTax(purchaseCostTotal,taxGST)  -- returns the total cost including tax 


--What makes functions so versatile is that we can repeat the same code, but with different parameters
--This can be useful for various things in Roblox, such as determining the drop rate of an item based on its rarity

purchaseCostTotal = 75  --update the cost variable
taxAustraliaGST = 1.1 --declare a different country's tax
addTax(purchaseCostTotal, taxAustraliaGST) -- returns total cost including tax in Australia
```
---

## Practice

Complete the code below such that the function called "addBonusDamage" will combine the original damage with bonus damage.

```lua
function ???(a,b)
  return ???
end
```
- addBonusDamage
- a + b
- a - a
- addDamage

---

## Revision

Complete the code below such that the function called "addBonusDamage" will multiply the original damage with bonus damage.

```lua
function ???(a,b)
  return ???
end
```
- addBonusDamage
- a * b
- a + a
- addDamage
