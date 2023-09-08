---
author: junoocha
type: normal
category: must-know

---

# Spinning Block Example Code
---

## Content
```lua
partVar = game.Workspace.Part
local TweenService = game.TweenService 
local info = TweenInfo.new(15, Enum.EasingStyle.Linear, Enum.EasingDirection.Out, 0, false, 0) 
--reverses boolean is now false, and repeatCount is 0.
local PropertyTable1 = { 
	Color = Color3.new(0.0431373, 1, 0.521569),
	Transparency = 0,
	Reflectance = 0.5,
	Size = Vector3.new(30, 1, 2), --only changing X axis
	Orientation = Vector3.new(0, 359, 0) --only orientation in this element, so use vector3
}
local PropertyTable2 = {
	Color = Color3.new(0.666667, 0, 0),
	Transparency = 0.2,
	Reflectance = 0.15,
	Size = Vector3.new(4,1,2),
	Orientation = Vector3.new(0, 359, 0),
}

local Tween1 = TweenService:Create(partVar, info, PropertyTable1)
local Tween2 = TweenService:Create(partVar, info, PropertyTable2)

while true do
	Tween1:Play()
	wait(10)
	Tween2:Play()
	wait(10) 
end
```