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

# TweenService: Color
---

## Content

For this insight, we'll be changing the **color** of a brick through animation. 

> Note that we will be continously adding on to the code of the previous insight.

To begin, insert a brick and manually change its color to a bright red hue. Since we'll be changing colors, we'll be working with the Color property in the propertyTable. 

```lua
local propertyTable = { 
    Color = Color3.new(0.0431373, 1, 0.521569) 
    -- You can choose any color you'd like so feel free to change it
    -- Try choosing a contrasting color to better see the differences.
}
```
Now, the brick should slowly change into a different color before changing back.

---

## Practice

If I were to change the time of the animation in TweenInfo to 2, it would cause the brick to... ???

- Change color much faster
- Change color much slower
- Nothing changes
- Uses 2 colors at once

---

## Revision

Let's say I created a color property change in the Tween Service, and in TweenInfo, I changed the true element to false. What happens is that at the end of the animation, it... ???

- Swaps immediately to the original color before changing again
- Slowly turns back into its original color
- Stops the animation
- Stops changing colors