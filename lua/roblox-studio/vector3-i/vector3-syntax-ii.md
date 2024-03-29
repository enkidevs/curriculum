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

# Vector3 Syntax II
---

## Content

In the parameters, you put the **values for the X, Y, and Z axis** of a vector. In simpler terms, the 3 values combined will create a single destination point.

```lua
partVariable = Vector3.new(5,0,0)
-- Creates a vector that has a length of 5 in the X direction
```
> Note that **running this code by itself does nothing**, as you *only created a vector*. It only changes when it's applied to a compatible property. I.e. `partVariable.Size = Vector3.new(5,0,0)`.

---

## Practice

```lua
partVariable.Size = Vector3.new(6, 4, 3)
```
The code above will... ???

- Changes the part's size
- Changes the part's position
- Changes the part's orientation
- Changes the part's location in Workspace

---

## Revision

```lua
partVariable = Vector3.new(6, 4, 3)

```
The code above will... ???

- Do nothing to the game, you only created a vector
- Changes the part's position
- Changes the part's orientation
- Changes the part's scaling