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

# Continuation on Adding Instances using Scripts
---

## Content
So, what happened? Did reality decide to break the laws and materialize an object out of thin air? Well, no, nothing should have happened.

Why? Well, we created a new instance, but Studio doesn't know which service it will be placed in. Thus, it won't be placed at all within the game. As such, lets assign a parent to the new instance.

```lua
newInstance = Instance.new("Part")   
--create and store the new instance as a variable

newInstance.Parent = Workspace
--set the Parent of the variable to workspace.
```
With this, the new instance is placed in Workspace, which now places it in the game. 

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