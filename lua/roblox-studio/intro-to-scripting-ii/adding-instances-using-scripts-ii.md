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

# Adding Instances using Scripts II

---

## Content
So, what happened? Did reality decide to break the laws and materialize an object out of thin air? Well, no, **nothing should have happened**.

Why? Well, we created a new instance, but Studio doesn't know which service it will be placed in. Thus, it won't be placed at all within the game. 

This time, let's give the new instance a parent. This can be done by storing it in a variable and setting the parent.

```lua
newInstance = Instance.new("Part")   
-- Create and store the new instance as a variable.

newInstance.Parent = Workspace
-- Set the Parent of the variable to workspace.
```
Finally, a new instance should be placed in Workspace and now shows up in-game.

---

## Practice
In the code below, how would I create a new instance called "GuiLabel" under a parent called "StarterGui"?

```lua
newInstance = Instance.new("???")
newInstance.??? = ???
```

- GuiLabel
- Parent
- StarterGui
- Part
- Script
- Child
- Gui

---

## Revision
In the code below, how would I create a new instance called "GuiLabel" under a parent called "StarterGui"?

```lua
newInstance = Instance.new("???")
newInstance.??? = ???
```

- GuiLabel
- Parent
- StarterGui
- Part
- Script
- Child
- Gui