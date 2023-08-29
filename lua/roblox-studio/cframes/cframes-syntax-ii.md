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

# CFrames Syntax
---

## Content

Positions called CFrames using `new()`. However, if you're changing the orientation using CFrames, you would call an angle CFrame, followed by radian values in the X, Y, and Z dimensions.

```lua
partVariable.CFrame = CFrame.Angles(x, y, z)
```
I know radians can be difficult to work with as degrees is much easier to visualize. Thus, you can import a math model to convert degrees into radians.

```lua
partVariable.CFrame = CFrame.Angles(x, math.rad(90), z)
--If I want to change the orientation by 90 degrees in the y axis
```

---

## Practice

---

## Revision
