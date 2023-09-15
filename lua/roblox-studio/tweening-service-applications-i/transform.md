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

# TweenService: Transformations
---

## Content
For this task, let's use animations that will target **Transformation properties**. The goal will be to make a spinning rectangle that increases and decreases in length.

To achieve the goal, we'll have to *manipulate* the **orientation and size** of the rectangle in the propertyTable.

```lua
local propertyTable = { 
	Color = Color3.new(0.0431373, 1, 0.521569),
	Transparency = 0,
	Reflectance = 0.5,
	Size = Vector3.new(30, 1, 2), --only changing X axis
	Orientation = Vector3.new(0, 359, 0) --only orientation in this element, so use vector3
}
```
Now the brick should start spinning and both increase and decrease in length.

---

## Practice

When changing the Size property in the propertyTable, you should set them equal to ???
- Vector3.new()
- Vector3.Angles()
- CFrame.new()
- CFrame.Angles()
---

## Revision
When changing the Orientation property in the propertyTable, you should set them equal to ???
- Vector3.new()
- Vector3.Angles()
- CFrame.new()
- CFrame.Angles()