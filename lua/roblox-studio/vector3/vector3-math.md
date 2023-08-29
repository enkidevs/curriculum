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

# Vector3 Math
---

## Content
If you're familiar with vectors in math, you'd know that vectors have a lot of math applications to it. In Roblox Studio, they work the same way.

You can add, subtract, multiply, and divide Vector3's together, as well as multiply or divide a Vector3 by a number. Each operation is done only with their respective dimension (x values with x, y values with y, z values with z).
```lua
Var = Vector3.new() + Vector3.new() --add
Var = Vector3.new() - Vector3.new() --subtract
Var = Vector3.new() * Vector3.new() --multiply
Var = Vector3.new() / Vector3.new() -- divide
Var = Vector3.new() * 5 --multiply by number
Var = Vector3.new() / 5 --divide by number
```
> Did you know that you can also put placeholder variables in the parameter like "i"? How can you make use of this information?

---

## Practice

```lua
Variable.Position = Variable.Position + Vector3.new(5, 0, 0)
```
If the position vector of an object is (0, 5, 0), the new vector is ???
- (5, 5, 0)
- (0, 5, 5)
- (0, 5, 0)
- (0, 0, 0)

---

## Revision

```lua
Variable.Position = Variable.Position * 2
```
If the position vector of an object is (0, 5, 0), the new vector is ???
- (0, 10, 0)
- (2, 5, 2)
- (2, 10, 2)
- (2, 7, 2)