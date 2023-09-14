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

Unlike Vector3, the math is not so straightforward with CFrames. *To add* CFrames with other CFrames, you must use an **asterix**. 

```lua
Variable.Property = CFrame.new() * CFrame.new()
```

An asterix is also used when you want to **include both position and orientiation data**. 

```lua
Variable.Property = CFrame.new() * CFrame.Angle()
```

---

## Practice

Finish the code below such that an orientation CFrame and position CFrame is updated.

```lua
Variable.CFrame = CFrame.new() * CFrame.???
```

- Angle()
- position()
- Vector3()
- new()

---

## Revision

Finish the code below such that an orientation CFrame and position CFrame is updated.

```lua
Variable.CFrame = CFrame.Angle() * CFrame.???
```

- new()
- position()
- Vector3()
- Angle()