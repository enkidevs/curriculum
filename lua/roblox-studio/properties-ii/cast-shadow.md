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

# Appearance Property: CastShadow
---

## Content

**CastShadow** acts as a **boolean value**, so once called, it can be adjusted by setting the variable to be **true or false**.

```lua
partVariable.CastShadow = false --The Part no longer casts a shadow
```


---
## Practice
In the code below, how would I write it such that a part would cast a shadow?
```lua
partVariable = game.Workspace.Part
partVariable.Castshadow = ???

```

- True
- False
- Plastic
- Cobblestone
- Texture

---

## Revision
In the code below, how would I write it such that a part would look plastic and cast a shadow?
```lua
partVariable = game.Workspace.Part
partVariable.??? = true

```

- CastShadow
- Shadow
- Material
- Color3
- BrickColor
- Texture