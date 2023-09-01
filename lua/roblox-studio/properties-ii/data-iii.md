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

# Data Property: Parent
---

## Content

**Parent** is the property that **states an instance's parent**. To change it, set the variable equal to the **location of the parent**.

> Remember to follow the hierarchy system

```lua
partVariable.Parent = game.Workspace.Baseplate
--When the script runs, the part will now be found under Baseplate.
--Useful for organizing instances after updating them
```
The code is very reminiscent of creating a new instance.

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
