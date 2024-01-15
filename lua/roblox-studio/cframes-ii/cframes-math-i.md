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

# CFrames Math Applications
---

## Content

Unlike Vector3, the math is not so straightforward with `CFrames`. *To add* CFrames with other CFrames, you must use an **asterisk**. 

```lua
Variable.Property = CFrame.new(X, Y, Z) * CFrame.new(X, Y, Z)
```

An asterisk is also used when you want to **include both position and orientation data**. 

```lua
Variable.Property = CFrame.new(X, Y, Z) * CFrame.Angle(X, Y, Z)
```

> Don't forget that these CFrame values still have to be set, these examples are just showing the general syntax.

---

## Practice

Finish the code below such that an orientation CFrame and position CFrame are updated.

```lua
Variable.CFrame = CFrame.new() * CFrame.???
```

- Angle()
- position()
- Vector3()
- new()

---

## Revision

Finish the code below such that an orientation CFrame and position CFrame are updated.

```lua
Variable.CFrame = CFrame.Angle() * CFrame.???
```

- new()
- position()
- Vector3()
- Angle()