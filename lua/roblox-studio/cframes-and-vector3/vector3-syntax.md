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

# Vector3 Syntax
---

## Content
**Vector3** can be thought of as a **vector[1] in space**, hence the three which represents 3D space. Using this idea, a vector's magnitude/length and direction can be used to **dictate position and size**.

To code it, you must set a variable equal to a **newly declared Vector3** .
```lua
partVariable = Vector3.new()
```
In the parameters, you put the **values for the X, Y, and Z axis** of a vector. In simple terms, the 3 values combined will create a single destination point.

```lua
partVariable = Vector3.new(5,0,0)
--Created a vector that has a length of 5 in the X direction
```
>Note that **running this code by itself does nothing**, as you *only created a vector*. It only changes when its applied to a compatible property.

---

## Practice

Vector3 utilizes the ideas of ??? to represent ???
- vectors
- 3D Space
- lines
- 2D Space
- objects


---

## Revision

```lua
partVariable = Vector3.new(6, 4, 3)

```
The code above will ???

- Do nothing to the game, you only created a vector
- Changes the part's position
- Changes the part's orientation
- Changes the part's scaling