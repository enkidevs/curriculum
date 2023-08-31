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

# Appearance Property: Material and CastShadow
---

## Content

### Material
The **material**, once called, can be adjusted by setting the variable to be equal to the **name of the material in quotation marks**.

```lua
partVariable.Material = "Plastic" --The Part has a plastic look
partVariable.Material = "Cobblestone" --The Part now has a rocky look 
```
### CastShadow
**CastShadow** acts as a **boolean value**, so once called, it can be adjusted by setting the variable to be **true or false**.

```lua
partVariable.CastShadow = false --The Part no longer casts a shadow
```


---
## Practice
In the code below, how would I write it such that a part would look plastic and cast a shadow?
```lua
partVariable = game.Workspace.Part
partVariable.??? = "Plastic"
partVariable.Castshadow = ???

```

- Material
- true
- false
- Plastic
- Cobblestone
- Texture

---

## Revision
In the code below, how would I write it such that a part would look plastic and cast a shadow?
```lua
partVariable = game.Workspace.Part
partVariable.??? = "Plastic"
partVariable.Castshadow = ???

```

- Material
- true
- false
- Plastic
- Cobblestone
- Texture