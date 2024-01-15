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

# Setting Up a Tween Animation
---

## Content
Now that we've gone over the components of TweenService, we'll now be combining them to create tween animation in Studio. 

To properly set up Tweenservice, we'll need to **define variables** for the **instance that will be edited**: the `propertyTable`, `info`, and the `TweenService`.

```lua
partVar = game.Workspace.Part -- Part variable
local TweenService = game.TweenService -- TweenService variable 
local info = TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, true, 0) -- Info variable
local propertyTable = { -- PropertyTable
}
local Tween = TweenService:Create(partVar, info, propertyTable) -- Tween Animation
Tween:Play() -- The command to play the animation
```
> We'll be using this setup as we go through different scenarios.
> The info variable is to remain unchanged unless specified otherwise.

---

## Practice

```lua
partVar = game.Workspace.Part
local TweenService = game.???
local info = ???.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, true, 0) 
local propertyTable = { 
}
local Tween = TweenService:???(partVar, ???, propertyTable) 
Tween:Play() 
```
Finish the code above.

- TweenService
- TweenInfo
- Create
- info

---


## Revision

```lua
partVar = game.Workspace.Part 
local TweenService = game.TweenService 
local info = TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, true, 0) 
local Tween = TweenService:Create(partVar, info, propertyTable)
Tween:Play() 
```
In the above code, the Tween setup is missing a variable. The missing Tween variable is... ???.

- propertyTable
- TweenInfo
- TweenService
- info
- Tween