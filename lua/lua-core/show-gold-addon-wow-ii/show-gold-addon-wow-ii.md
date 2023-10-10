---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Show Gold Addon II

---
## Content

Next we are going to create a `FontString`. This allows us to draw text inside a frame:

```lua
-- Create a font string to display the gold text
local fontString = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
fontString:SetAllPoints()
```
