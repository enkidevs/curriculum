---
author: junoocha
type: normal
category: must-know

---

# Using Multiple Tweens II

---

## Content

Now create a while loop to continously play the animations. Play the first animation and in the line after, make sure you wait the duration of the animation before playing the next. Repeat the wait command so it waits for the next animation.

```lua
--create a new Tween animation variable
local Tween2 = TweenService:Create(partVar, info, PropertyTable2)

--use a while loop to make the animations play infinitely
while true do
	Tween1:Play()
	wait(10) --important to prevent animations from overlapping
	Tween2:Play()
	wait(10) 
    --wait() is also important in ensuring the code doesn't run too fast
end
```

> While not changing the reverses and repeatCount value won't change much in this example, it's advised to do so for future tweening creations, as we want to play the next animation instead of repeating it.

Now you've made a spinning block with various attributes! You can use this as a platform, lava block, or even add more to it!

Here's the full code: [1].

---

## Practice
In the spinning block example, everything but orientation was changed in the new propertyTable because ???
- keeping orientation the same will maintain the direction of the rotation
- there is no such thing as backwards rotation
- changing too many variables at once will break TweenService
- orientation does not affect the result that much

---

## Revision

The wait() is required for loops and tweens because it ???
- prevents overlapping animations and maintaing code stability
- maintains code stability
- prevents overlapping animations
- ensures that the coder won't find bugs

---

## Footnotes

[1: Spinning Block Code]

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