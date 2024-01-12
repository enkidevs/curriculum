---
author: junoocha
type: normal
category: must-know

---

# Using Multiple Tweens I

---

## Content
If you've followed the examples, you'd notice that the *rectangle doesn't spin 360° forever*, as it will make one rotation before spinning backwards.

This is when you would want to **use multiple tweens and a loop**! To do this, *create another tween* (the tween variable and PropertyTable) and *reverse every change* you made in first tween **except orientation**, as we want to keep the rotation.

```lua
--Create a new property table. However, keep the orientation.
local PropertyTable2 = {
	Color = Color3.new(0.666667, 0, 0),
	Transparency = 0.2,
	Reflectance = 0.15,
	Size = Vector3.new(4,1,2),
	Orientation = Vector3.new(0, 359, 0),
}
```
---

