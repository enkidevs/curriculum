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

# More on Appearance Properties

---

## Content

The code to change other properties in the appearance are fairly straightforward. 

### Reflectance and Transparency
Reflectance and transparency, once called, can be adjusted by setting the variable to be equal to a number between 0 and 1. The higher the number, the more reflective/transparent the part will become.

```lua
partVariable.Transparency = 0.9
partVariable.Reflectance = 0.9
-- The part is now very transparent and reflective.
```
### Material
The material, once called, can be adjusted by setting the variable to be equal to the name of the material in quotation marks.

```lua
partVariable.Material = "Plastic" --The Part has a plastic look
partVariable.Material = "Cobblestone" --The Part now has a rocky look 
```
### CastShadow
CastShadow acts as a boolean value, so once called, it can be adjusted by setting the variable to be true or false.
```lua
partVariable.CastShadow = false --The Part no longer casts a shadow
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
