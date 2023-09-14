---
author: junoocha
type: normal
category: discussion
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Vector3 Math Operations
---

## Content

Finally, you can multiply or divide a Vector3 by a number.

> Each operation is done only with their respective dimension (X values with X, Y values with Y, Z values with Z).

```lua
Var = Vector3.new() * 5 --multiply by number 5
Var = Vector3.new() / 5 --divide by number 5
```

> Did you know that you can also put placeholder variables in the parameter like "i"? How can you make use of this information?

---

## Practice

```lua
Variable.Position = Variable.Position * 4 
```
If the position vector of an object is (0, 5, 0), the new vector is ???
- (0, 20, 0)
- (20, 0, 0)
- (0, 9, 0)
- (0, 0, 20)

---

## Revision

```lua
Variable.Position = Variable.Position / 5 
```
If the position vector of an object is (10, 5, 15), the new vector is ???
- (2, 1, 3)
- (50, 25, 75)
- (75, 25, 50)
- (3, 1, 2)