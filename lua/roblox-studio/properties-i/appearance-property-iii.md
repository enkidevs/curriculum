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

# Appearance Property: Reflectance and Transparency
---

## Content

**Reflectance** and **transparency** are fairly simple. Once called, can be adjusted by setting the variable to be equal to a **number between 0 and 1**. The *higher the number*, the *more reflective/transparent* the part will become.

```lua
partVariable.Transparency = 0.9
partVariable.Reflectance = 0.9
-- The part is now very transparent and reflective.
```
---

## Practice
To make an object only slightly transparent, you would need to write the following code:
```lua
partVariable = game.Workspace.Part
partVariable.??? = ???
```
- Transparency
- 0.2
- Reflectance
- BrickColor
- 0.9

---

## Revision
To make an object very reflective, you would need to write the following code:
```lua
partVariable = game.Workspace.Part
partVariable.??? = ???
```
- Reflectance
- 0.9
- Transparency
- BrickColor
- 0.1
