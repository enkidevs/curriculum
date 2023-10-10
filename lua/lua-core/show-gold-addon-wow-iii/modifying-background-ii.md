---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Modifying Background of Gold Addon II

---
## Content

First, let's add a background:
```lua
frame.texture = frame:CreateTexture(nil, "BACKGROUND")
frame.texture:SetAllPoints(frame)
frame.texture:SetColorTexture(0.3, 0.2, 0.1, 0.5)
```

We give the same dimensions for the texture as the frame by setting its anchor points to the edges of the frame using the `SetAllPoints` method and passing the frame as the argument.

Then the texture is colored with a semi-transparent brown color using the `SetColorTexture()` method.

The `SetColorTexture` arguments, in order, are (Red, Green, Blue, Alpha (Opacity of the frame))