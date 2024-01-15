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

# Using Multiple Tweens II

---

## Content

Now create a while loop to continuously play the animations. Play the first animation and in the line after, **make sure you wait for the duration of the animation** before playing the next. Repeat the wait command so it waits for the next animation.

```lua
--Create a new Tween animation variable.
local Tween2 = TweenService:Create(partVar, info, PropertyTable2)

--Use a while loop to make the animations play infinitely.
while true do
  Tween1:Play()
  wait(10) --Important to prevent animations from overlapping.
  Tween2:Play()
  wait(10) 
end
```

> While keeping the reverses and repeatCount value won't change much in this example, it's advised to do so for future tweening creations, as we want to play the next animation instead of repeating it.

Now you've made a spinning block with various attributes! You can use this as a platform, lava block, or even add more to it!

> The next insight will contain the entire code for the tween animation.

---

## Practice

In the spinning block example, everything but orientation was changed in the new propertyTable to... ???

- Maintain the direction of the rotation
- Reverse the direction of the rotation
- Simplify the propertyTable
- Not overload the table

---

## Revision

The wait() is required for loops and tweens because it... ???

- Prevents overlapping animations and maintaining code stability
- Maintains code stability
- Prevents overlapping animations
- Ensures that the coder won't find bugs