---
author: junoocha
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

# Collision Property: CanCollide

---

## Content

Collision properties are fairly straightforward, as they deal with *physical instances touching others*. 

### CanCollide

**CanCollide** is a **boolean property** that determines **if a part can collide with others**. If false, everything will go through it, otherwise, if true, it will have physical mass that can be touched. 

```lua
partVariable.CanCollide = false
--Everything will now physically go through this part.
--Useful for creating secret doors or false paths, as players can slip right past them
```
---

## Practice
Imagine two platforms connected by three blocks, each named leftPath, rightPath, and centerPath. Considering the code below, the correct path that allows the user to travel across is the ??? path.

```lua
leftPathVariable.CanCollide = false
rightPathVariable.CanCollide = true
centerPathVariable.CanCollide = false
```
- right path
- left path
- center path

---

## Revision
Imagine two platforms connected by three blocks, each named leftPath, rightPath, and centerPath. Considering the code below, the correct path that allows the user to travel across is the ??? path.

```lua
leftPathVariable.CanCollide = true
rightPathVariable.CanCollide = false
centerPathVariable.CanCollide = false
```
- left path
- center path
- right path