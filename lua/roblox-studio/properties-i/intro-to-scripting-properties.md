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

While you can manually set properties to begin with, knowing how to change them while the game is running is essential.

> Throughout the properties workout, we'll by working with a **part** within the Workspace.

To change a property, we must **first access the part**. One way of accessing it can be done through **variables**[1]. Afterwards, to indicate that we want to access a property, we can simply **add a period after the variable, followed by the property**.

```lua
partVariable = game.Workspace.Part
--let's say we want to access the BrickColor property.
partVariable.Brickcolor
```
---

## Practice

I want to access the "Transparency" property of variable "blockVariable". The following code grants us this access:
```lua
???.???
```
- blockVariable
- Transparency
- partVariable
- newTransparency
---

## Revision

I want to access the "Transparency" property of variable "blockVariable". The following code grants us this access:
```lua
???.???
```
- blockVariable
- Transparency
- partVariable
- newTransparency

---

## Footnotes

[1: Variables]

Referring to how we can create a connection between variables and instances, such that any changes made to the variable will be made to the instance.