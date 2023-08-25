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
# Conclusion on Accessing Instances Using Variables
---

## Content

Finally, to properly connect the variable with the baseplate, *separate each parent with a period* and *end with the object you want to reference*. Remember that **lua is case-sensitive!**

```lua
-- Baseplate is found in Workspace, which is found in game.
baseplateVariable = game.Workspace.Baseplate
```

---

## Practice
If we were to go a level deeper and access the texture that's in the BasePlate, we would write the following code:
```lua
textureVariable = ???
```
- game.Workspace.Baseplate.Texture
- game.workspace.baseplate.texture
- game.Workspace.Texture.Baseplate
- game.Workspace.baseplate.Texture

---

## Revision

How would you access an object called "SpawnLocation" in Workspace in the code below? (Hint. SpawnLocation is directly under Workspace)
```lua
spawnVariable = ???
```
- game.Workspace.SpawnLocation
- game.Workspace.Baseplate.SpawnLocation
- game.Workspace.Spawnlocation
- game.ServerScriptService.SpawnLocation