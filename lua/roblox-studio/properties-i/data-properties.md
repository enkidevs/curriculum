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

# Data Properties

---

## Content

The data properties tend to act more as information you can use to identify the part, but there are still some properties that can be changed.

### Name
The part's name can be changed by setting the variable equal to the **new desired name in quotation marks**.

```lua
partVariable.Name = "Edited Part"
--As soon as this line runs, the part's name is now Edited Part
--Useful if you need to identify changed parts while running a script
```

### Locked
Locked is a **boolean property** that determines if **in-game tools can edit the part**. True if un-editable, false otherwise.
```lua
partVariable.Locked = false
--As soon as this line runs, the part becomes editable using in-game tools
--Useful in building games where players can build only in a set amount of time
```

### Parent
Parent is the property that **states an instance's parent**. To change it, set the variable equal to the **location of the parent**.

> Remember to follow the hierarchy system

```lua
partVariable.Parent = game.Workspace.Baseplate
--When the script runs, the part will now be found under Baseplate.
--Useful for organizing instances after updating them
```
> Archivable Property should be ignored, as its usage is very niche and won't be used very often, if not at all.
---

## Practice
Let's say I made a script that changes incomplete instances into complete ones, and I want to differentiate the incomplete ones from the complete ones by using different parents. 

Finish the code that lets me change the parent of a newly completed instance to a parent called "Complete" in Baseplate.

```lua
completedPartVariable = game.Workspace.Baseplate.Incomplete
completedPartVariable.??? = game.Workspace.Baseplate.???
```
- Parent
- Complete
- Locked
- Name
- Incomplete
---

## Revision

Let's say I made a script that changes incomplete instances into complete ones, and I want to differentiate the incomplete ones from the complete ones by using different parents. 

Finish the code that lets me change the parent of a newly completed instance to a parent called "Complete" in Baseplate.

```lua
completedPartVariable = game.Workspace.Baseplate.Incomplete
completedPartVariable.??? = game.Workspace.Baseplate.???
```
- Parent
- Complete
- Locked
- Name
- Incomplete
