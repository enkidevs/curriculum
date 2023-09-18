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

# TweenService Syntax
---

## Content
To access this tool, assign a variable that accesses the tweenservice. Simply set it equal to `game.TweenService`. 

Now, to actually use TweenService, follow the code below:
```lua
TweenService = game.TweenService
local Tween = TweenService:Create(Part, Info, PropertyTable)
```
As you see, you'll create a local variable and set it equal to the variable you made earlier. 

Within the Create() parameters are 3 variables: 
- Part represents the **part that will be changed**
- Info represents the **details of the tweening animation**
- PropertyTable represents a **table of property changes**
---

## Practice

The ??? variable in the Create() paramaters of tweenservice represents the property changes that will be made.

- PropertyTable
- Info
- Part
- Tween

---

## Revision

The ??? variable in the Create() parameters of tweenservice represents that details about the tweening animation.

- Info
- Part
- PropertyTable
- Tween
