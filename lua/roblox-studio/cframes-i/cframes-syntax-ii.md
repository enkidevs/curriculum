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

# CFrames Syntax: Orientation

---

## Content

For position data, they called CFrames using `new()`. However, if you're *changing the orientation* using CFrames, you would call an **angle CFrame**, followed by **radian** values in the X, Y, and Z dimensions.

```lua
partVariable.CFrame = CFrame.Angles(X, Y, Z)
```
If you'd like to use degrees instead of radians, you can import a math model to convert degrees into radians.

```lua
partVariable.CFrame = CFrame.Angles(X, math.rad(90), Z)
--If I want to change the orientation by 90 degrees in the y axis
```
> If you're comfortable using radians, you can access pi using math.pi

---

## Practice

Finish the code below such that the orientation changes by 75 degrees in the Z axis
```lua
partVariable.CFrame = CFrame.??? (???)
```
- Angles
- 0, 0, math.rad(75)
- 0, math.rad(75), 0
- new
- math.rad(75), 0, 0

---

## Revision

Finish the code below such that the orientation changes by 50 **radians** in the X axis
```lua
partVariable.CFrame = CFrame.??? (???)
```
- Angles
- 50, 0, 0
- 0, math.rad(50), 0
- new
- math.rad(50), 0, 0