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

# Continuation of Application of CFrames
---

## Content

Now that we have the basic skeleton set up for the infinite loop, let's now make changes to the actual part.

Since we intend to have `i` be **involved in changing the orientation**, it'll have to **act as one of the parameters** in CFrame. This way, everytime the *for loop* activates, the orientation *changes slightly*.

Of course, don't forget to add a part and create the variable to associate it with. Play around with the block size for better visualization.

> You must add `wait()`, as without it, the code **runs too fast** and Studio gets overwhelmed, **causing it to break**.

```lua
while true do
    for i = 1, 360 do
        partVariable.CFrame = partVariable.CFrame * CFrame.Angles(0, math.rad(i), 0)
        wait()
    end
end
```
---

## Practice
Josh wanted to create a spinning block using CFrames. However, he noticed that while using `i = 1,360` for his **for loop** condition, it is not fast enough. To make the block spin faster, he could write ???

- `i = 1, 360, 6`
- `i = 6, 360`
- `i = 1, 6`
- `i = 60, 1000, 1`
---

## Revision

```lua
while true do
    for i = 1, 360 do
        partVariable.CFrame = partVariable.CFrame * CFrame.Angles(0, math.rad(i), 0)
    end
end
```
If you were to run the code above, you would get a script exhausted error. This is caused by ???

- The code is running too fast without a `wait()` function
- the `true` value not changing
- the loop having terrible structure
- the CFrame orientation is using degrees