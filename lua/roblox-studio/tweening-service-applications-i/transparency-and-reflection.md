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

# TweenService: Transparency and Reflection
---

## Content

For this insight, we'll be using `TweenService` to change the **transparency** and **reflection**. Before writing any code, manually change the transparency of the block to 0.2 and the reflectance to 0.15.

In the propertyTable, let's change the transparency to 0 and the reflectance to 0.5. 

```lua
local propertyTable = { 
    Color = Color3.new(0.0431373, 1, 0.521569),
    Transparency = 0,
    Reflectance = 0.5
}
```
If you follow this example, you'll see the slightly transparent red block turn into a bright green block that has a slight reflectance and is no longer transparent. After, it'll turn back to a transparent red block.

---

## Practice

If in the propertyTable, the transparency was set to 1, while the object has a transparency of 0 to begin with, the object will... ???
- Become invisible by the end of the animation
- Become fully visible by the end of the animation
- Nothing changes
- Become partially invisible

---

## Revision

If in the propertyTable, the reflectance was set to 1, while the object has a reflectance of 0 to begin with, the object will... ???
- Become fully reflective, which removes the color
- Become fully reflective but maintains the color
- Lose all of its reflectance and loses its color
- Lose all of its reflectance but maintains the color
