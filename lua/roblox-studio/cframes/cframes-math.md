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

# CFrames Math Applications
---

## Content
Unlike Vector3, the math is not so straightforward with CFrames. *To add* CFrames with other CFrames, you must use an **asterix**. An asterix is also used when you want to **include both position and orientiation data**. 
```lua
Variable.Property = CFrame.new() * CFrame.new()
Variable.Property = CFrame.new() * CFrame.Angle()

```
There are **no specific syntax** for subtracting, multiplying, or dividing CFrames. However, there are situations when you would add, multiply, or subtract a CFrame with a Vector3. 

```lua
Variable.Property = CFrame.new() + Vector3.new() 
--produces CFrame
Variable.Property = CFrame.new() - Vector3.new()
--produces CFrame
Variable.Property = CFrame.new() * Vector3.new()
--produces Vector3
```

---

## Practice
Finish the code below such that an orientation CFrame and position CFrame is updated. Input the position CFrame first
```lua
Variable.CFrame = CFrame.??? + CFrame.???
```
- new()
- Angle()
- position()
- Vector3()
---

## Revision

Review the code below and determine which option is an illegal operation.
```lua
Variable.Property = CFrame.new() * CFrame.Angle() --Option 1
Variable.Property = CFrame.new() * CFrame.Angle() --Option 2
Variable.Property = CFrame.new() + CFrame.new()  --Option 3
Variable.Property = CFrame.new() + Vector3.new()  --Option 4
```
In the code above, the ??? option is the illegal operation.
- 3
- 1
- 2
- 4