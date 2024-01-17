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

# Multiplying and Dividing Vector3's
---

## Content

You can also multiply and divide `Vector3` together. 

> Reminder that each operation is done only with their respective dimension (X values with X, Y values with Y, Z values with Z).

```lua
-- Multiply Vector3
Var = Vector3.new(1, 1, 1) * Vector3.new(1, 2, 3) -- (1, 2, 3)

-- Divide Vector3
Var = Vector3.new(1, 2, 3) / Vector3.new(1, 2, 3) -- (1, 1, 1)
```

---

## Practice

```lua
Variable.Position = Variable.Position * Vector3.new(5, 0, 0)
```
If the position vector of an object is (3, 1, 1), the new vector is... ???
- (15, 0, 0)
- (15, 1, 1)
- (8, 1, 1)
- (8, 0, 0)

---

## Revision

```lua
Variable.Position = Variable.Position * Vector3.new(3, 2, 1)
```
If the position vector of an object is (1, 2, 3), the new vector is... ???
- (3, 4, 3)
- (4, 3, 4)
- (4, 4, 4)
- (2, 0, 1)