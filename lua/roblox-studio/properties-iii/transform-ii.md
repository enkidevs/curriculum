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

# Transform Property: CFrame Position
---

## Content
As explained previously, CFrame holds the orientation and position of an object. 

### Position
To change the position, you can set the variable equal to a new CFrame. The parameter should hold how much you want to move the object in their respective direction (X, Y, Z)

```lua
partVariable.CFrame = CFrame.new(1,1,1)
--move the the object by a value of 1 in the x, y, and z directions
```
---

## Practice
Finish the code below to change the position of an object by 5 in the Y direction.
```lua
partVariable.CFrame = ???.new(???)
```
- CFrame
- 0, 5, 0
- Vector3
- 5, 0, 0
- 0, 0, 5
---

## Revision

Finish the code below to change the position of an object by 2 in the X and Z direction.
```lua
partVariable.??? = CFrame.new(???)
```
- CFrame
- 2, 0, 2
- Vector3
- 0, 2, 2
- 2, 2, 0