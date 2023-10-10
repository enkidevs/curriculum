---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Addon Border I

---
## Content

Now, let's add a border. 

```lua
-- Create an empty border texture
frame.border = frame:CreateTexture(nil, "BORDER")

-- Create a border frame:
local fBorder =CreateFrame("frame",nil,frame)

-- Set its anchor points to the edges of the frame
fBorder:SetAllPoints(frame)

-- Set how frames overlap
fBorder:SetFrameStrata("BACKGROUND")
```