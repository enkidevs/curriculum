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

# Accessing Elements Using Variables
---

## Content
As previously stated, variables are important in Roblox Studio as they **can directly store objects and instances**. By doing this, the **variable can act as an easy access point** to the object, so any actions/code that manipulates or references the variable will also affect the object.

![variable-referencing-diagram](https://img.enkipro.com/cab77f31b9f8023a4369582118573e8f.png)

> The available options that can change these types of variables will be focused in the properties workouts.

To reference an element, we must *first declare a variable*. Let's create a variable that will hold the baseplate of the game.

```lua
baseplateVariable = 
--Declare variable
```
To create the connection point to the baseplate, we *must create a path through the hiearchichal system* of Roblox Studio. Like a Windows file system, we **must access each parent folder** before reaching the desired file. 

In the image below, the "parents" are highlighted, which represent the path that must be taken.

![hierarchy-example](https://img.enkipro.com/dd2dad3eab1a4a9b0c55fb24cd067533.png)

> Remember that the explorer tab represents the entire game. Thus, the ancestor/head of the system is `game`.

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