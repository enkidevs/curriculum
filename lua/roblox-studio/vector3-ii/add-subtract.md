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

# Adding and Subtracting Vector3's
---

## Content
If you're familiar with vectors in math, you'd know that vectors have a lot of math applications to it. In Roblox Studio, they work the same way.

To start, you **can add or subtract `Vector3`**.

```lua
-- Adding Vector3
Var = Vector3.new(1, 1, 1) + Vector3.new(1, 2, 3) -- (2, 3, 4)

-- Subtracting Vector3
Var = Vector3.new(2, 3, 4) - Vector3.new(1, 1, 1) -- (1, 2, 3)
```

> Each operation is done only with their respective dimension (X values with X, Y values with Y, Z values with Z).

---

## Practice

```lua
Variable.Position = Variable.Position + Vector3.new(5, 0, 0)
```
If the position vector of an object is (0, 5, 0), the new vector is... ???
- (5, 5, 0)
- (0, 5, 5)
- (0, 5, 0)
- (0, 0, 0)

---

## Revision

```lua
Variable.Position = Variable.Position + Vector3.new(5, 2, 2)
```
If the position vector of an object is (2, 5, 1), the new vector is... ???
- (7, 7, 3)
- (3, 3, 1)
- (10, 10, 2)
- (3, 3, 7)