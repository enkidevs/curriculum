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

# Vector3 Syntax Conclusion
---

## Content

With Vector3, you can also change the **orientation**. It follows the same exact syntax, except that **degrees are used in the syntax**.

```lua
partVariable.Orientation = Vector3.new(90, 180, 359)
```

---

## Practice

```lua
partVariable.Orientation = Vector3.new(6, 4, 3)
```
The code above will ???

- Changes the part's orientation
- Changes the part's position
- Changes the part's size
- Changes the part's location in Workspace

---

## Revision

Finish the code such that the orientation of the objet changes 240 degrees in the Z-axis and 79 degrees in the X-Axis.

```lua
partVariable.Orientation = Vector3.new(???, ???, ???)
```

The code above will ???

- 79
- 0
- 240