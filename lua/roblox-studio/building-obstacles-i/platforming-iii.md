---
author: junoocha
type: normal
category: how-to

---

# Dynamic Platforming

---

## Content

Don't forget that **you can change position and orientation**! You can make platforms that shrink or grow, perhaps give them a spin, or be simplistic and have them function as rudimentary elevators! Once again, this is **YOUR CHOICE**.

For instance, let's create a spinning platform to make it difficult for the player: [1]

This is just a base, **you can keep adding on to it**! Add length adjustments or position changes. In fact, why not combine dynamic changes with physical changes such as changing collision and transparency? 

You are *only limited by your imagination*.

---

## Footnotes

[1: Example Code]

```lua
partVar = game.Workspace.Part
local TweenService = game.TweenService 
local info = TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, -1, false, 0) 
--reverses boolean should be false since we only want one direction
--to keep infinitely spinning, set repeatCount to -1
local PropertyTable = { 
    Orientation = Vector3.new(0, 359, 0) --only orientation in this element, so use vector3
}

local Tween1 = TweenService:Create(partVar, info, PropertyTable)

while true do
    Tween1:Play()
    wait(10) 
end
```