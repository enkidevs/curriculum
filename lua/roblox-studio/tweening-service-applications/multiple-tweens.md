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

# Using Multiple Tweens
---

## Content
If you've followed the examples, you'd notice that the *rectangle doesn't spin 360° forever*, as it will make one rotation before spinning backwards.

This is when you would want to **use multiple tweens and a loop**! To do this, *recreate another tween* (the tween variable and PropertyTable) and *reverse every change* you made in first tween **except orientation**, as we want to keep the rotation.

Afterwards, create a while loop. Play the first animation and in the line after, make sure you wait the duration of the animation before playing the next. Repeat the wait command so it waits for the next animation.

```lua
--create a new property table
--keep orientation
local PropertyTable2 = {
	Color = Color3.new(0.666667, 0, 0),
	Transparency = 0.2,
	Reflectance = 0.15,
	Size = Vector3.new(4,1,2),
	Orientation = Vector3.new(0, 359, 0),
}
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
Now you've made a spinning block with various attributes! You can use this as a platform, kill obstacle, or even add more to it!

---

## Practice
In the previous example, everything but orientation was changed in the new propertyTable because ???
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
