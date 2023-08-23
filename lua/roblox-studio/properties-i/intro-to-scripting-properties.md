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

# Intro to Scripting Properties

---

## Content

Previously, we went over how properties can be changed manually in the first workout. Now, we'll focus on changing properties through scripting.

> Throughout the properties workout, we'll by working with a part within the Workspace.

To change a property, we must first access the part, which can be done through variables (if you're confused, refer back to the insight, "Accessing Elements with Variables" in the previous workout.).

```lua
partVariable = game.Workspace.Part
--this variable now holds the part.
```
Once we hold the part within a variable, we can now start applying property changes in the variable. To indicate that we want to access a property, we can simply add a period after the variable, followed by the property.

```lua
--let's say we want to access the BrickColor property.
partVariable.Brickcolor
```

>❗ So far, we have been working on the basic fundamentals of studio. As we progress through this course, we'll start building components of an obstacle course, also known as obby's in Roblox.

---

## Practice


---

## Revision
