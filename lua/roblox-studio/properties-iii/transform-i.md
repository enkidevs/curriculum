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

# Transform Property: Size
---

## Content
The **Transform** properties involve changing the **position and orientation** of the **object itself**. 

### Size
The **Size** property holds the **lengths** of an object in the **X, Y, and Z axis**. To change the size, we'll be **using Vector3** since this only involves the 3D space and doesn't include orientation.

Set the variable to equal a **new Vector3**, where the *changes in size will be included in its parameter*.

```lua
partVariable.Size = Vector3.new(1, 1, 1)
--stretching all 3 dimensions by a value of 1
```
---

## Practice

Finish the code below such that the object will increase in size by 4 in the Z direction.
```lua
partVariable.Size = ???.new(???)
```
- Vector3
- 0, 0, 4
- CFrame
- 0, 4, 0
- 4, 0, 0

---

## Revision

Finish the code below such that the object will increase in size by 2 in the X and Y direction.
```lua
partVariable.Size = ???.new(???)
```
- Vector3
- 2, 2, 0
- CFrame
- 0, 2, 2
- 2, 0, 2