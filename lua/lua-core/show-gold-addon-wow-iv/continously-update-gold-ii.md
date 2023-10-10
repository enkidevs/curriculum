---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Addon Border II

---
## Content

Now let's start drawing our border lines:
```lua
-- Left side of the frame:
fBorder.left=fBorder:CreateTexture(nil,"BORDER")

-- Set positions and thickness
fBorder.left:SetPoint("BOTTOMLEFT",fBorder,"BOTTOMLEFT",-2,-1)
fBorder.left:SetPoint("TOPRIGHT",fBorder,"TOPLEFT",-1,1)

-- Set the color and opacity
fBorder.left:SetColorTexture(0,0,0,1)
```