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

# CFrames Syntax: Position
---

## Content
If you recall, `CFrames` are also known as **coordinate frames**, as they use *coordinates to change the value of positions and orientations*. To differentiate positions and orientations, there are two different syntaxes.

---

### Position
If you're changing a position using `CFrames`, you would **call a new CFrame**, followed by X, Y, and Z values.

```lua
partVariable.CFrame = CFrame.new(X, Y, Z)
```
---

## Practice
Finish the code below such that the new position changes by a value of -4 in the Y axis.
```lua
partVariable.CFrame = CFrame.??? (???)
```

- new
- 0, -4, 0
- Angle
- 0, 0, -4
- -4, 0, 0
---

## Revision
Finish the code below such that the new position changes by a value of -5 on the X axis and 4 on the Z axis.
```lua
partVariable.CFrame = ???.new (???)
```

- CFrame
- -5, 0, 4
- Angle
- Vector3
- 5, 0, -4
- 4, 0, -5