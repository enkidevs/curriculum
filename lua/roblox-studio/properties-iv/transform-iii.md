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

# Transform Property: CFrame Orientation
---
## Content

Changing the orientation is very similar to the syntax of changing the position. The only difference is that instead of declaring a new CFrame, we'll be **declaring an "angle" CFrame**, which holds the angle offset of the object.

```lua
partVariable.CFrame = CFrame.Angle(0,math.rad(90), 0)
--Remember that Angle() uses radians.
--Use math.rad() to convert degrees into radians.
```

---

## Practice
Finish the code below to change an object's orientation by 90 degrees in the Z direction.

```lua
partVariable.CFrame = CFrame.??? (???)
```
- Angle
- 0, 0, math.rad(90)
- math.rad(90), 0, 0
- New

---

## Revision
Finish the code below to change an object's orientation by 90 degrees in the X direction.

```lua
partVariable.CFrame = CFrame.??? (???)
```
- Angle
- math.rad(90), 0, 0
- 0, 0, math.rad(90)
- New