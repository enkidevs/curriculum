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

# Pivot Property: Position Offset
---

## Content
The `pivot properties` involve changing the **position and orientation** of an object's **point of rotation**, known as the **pivot**. To better visualize pivot points, its recommended to *have the rotate tool active while selecting a block*.

---

### Position Offset
`Position offset` refers to the **position of the pivot point**. Changing any of the 3 values will move the point of rotation away from the part, respective to their dimension. To change it, set the variable equal to a new CFrame.

```lua
partVariable.PivotOffset = CFrame.new(0,0,3)
-- The coordinates represent how many studs you'd like to move the pivot away from the origin.
-- Useful for changing an object's route of rotation (i.e. make an effect more dynamic while circling a player).
``` 

---

## Practice

The pivot properties involve changing the position and orientation of... ???

- An object's pivot
- The object itself
- The game's origin
- The baseplate's origin
---

## Revision

The difference between pivot and transform is that... ???

- Pivot focuses on the point of rotation, whereas transform focuses on the object itself
- Only transform changes the orientation
- Only pivot changes the orientation
- Pivot focuses on the object itself, whereas transform focuses on the point of rotation
