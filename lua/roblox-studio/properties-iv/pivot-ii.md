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

# Pivot Property: Orientation Offset
---

## Content
The `orientation offset` **changes the X, Y and Z directions of the rotate** tool.

![orientation-change](https://img.enkipro.com/b4793c90a9b80333aca16250fed8deed.png)

Similarly to position offset, any changes to the value will change the orientation respective to their X, Y, Z dimension.
To change the orientation, you must declare the angle of a CFrame.

```lua
-- The property is still PivotOffset.
variable.PivotOffset =  CFrame.Angles(0,math.rad(90),0)
-- Note that Angles() only understands radians. 
-- Use the math.rad() function to input radians as degrees.
```
---

## Practice
To change the orientation of the pivot, a CFrame must have ??? as its parameters
- Angles with radians as its parameters
- Angles with degrees as its parameters
- New with radians as its parameters
- New with degrees as its parameters

---

## Revision
A PivotOffset change in the position requires `CFrame.???`, while a PivotOffset change in orientation requires `CFrame.???`

- New()
- Angle()
- math.deg()
- math.rad()