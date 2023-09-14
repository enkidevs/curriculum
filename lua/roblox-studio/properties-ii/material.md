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

# Appearance Property: Material
---

## Content

The **material**, once called, can be adjusted by setting the variable to be equal to the **name of the material in quotation marks**.

```lua
partVariable.Material = "Plastic" --The Part has a plastic look
partVariable.Material = "Cobblestone" --The Part now has a rocky look 
```

---

## Practice

In the code below, how would I write it such that a part would look plastic?

```lua
partVariable = game.Workspace.Part
partVariable.??? = "Plastic"
```

- Material
- BrickColor
- Color
- Texture

---

## Revision
In the code below, how would I write it such that a part would look plastic?
```lua
partVariable = game.Workspace.Part
partVariable.Material = "???"
```

- Plastic
- Plastic.new()
- Cobblestone
- Texture
- PlasticLook