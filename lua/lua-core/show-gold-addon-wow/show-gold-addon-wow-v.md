---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Continously Update Gold

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

The size of the `fBorder.left` frame is set relative to the `fBorder` frame.

The first line sets the bottom-left anchor point of `fBorder.left` to the bottom-left anchor point of `fBorder`, with an offset of -2 pixels to the left and -1 pixel down. This means that the bottom-left corner of `fBorder.left` will be positioned 2 pixels to the left and 1 pixel down from the bottom-left corner of `fBorder`.

The second line sets the top-right anchor point of `fBorder.left` to the top-left anchor point of `fBorder`, with an offset of -1 pixels to the left and 1 pixel up. This means that the top-right corner of `fBorder.left` will be positioned 1 pixel to the left and 1 pixel up from the top-left corner of `fBorder`.

Taken together, these two lines of code position and size `fBorder.left` so that it spans the left edge of `fBorder` with a 1-pixel gap at the top and a 2-pixel overlap at the bottom.

Now let's do the other 3 sides:
```lua
-- Right side of the frame:
fBorder.right=fBorder:CreateTexture(nil,"BORDER")
fBorder.right:SetPoint("BOTTOMLEFT",fBorder,"BOTTOMRIGHT",1,-1)
fBorder.right:SetPoint("TOPRIGHT",fBorder,"TOPRIGHT",2,1)
fBorder.right:SetColorTexture(0,0,0,1)

-- Top side of the frame:
fBorder.top=fBorder:CreateTexture(nil,"BORDER")
fBorder.top:SetPoint("BOTTOMLEFT",fBorder,"TOPLEFT",-1,1)
fBorder.top:SetPoint("TOPRIGHT",fBorder,"TOPRIGHT",1,2)
fBorder.top:SetColorTexture(0,0,0,1)

-- Bottom side of the frame:
fBorder.bottom=fBorder:CreateTexture(nil,"BORDER")
fBorder.bottom:SetPoint("BOTTOMLEFT",fBorder,"BOTTOMLEFT",-1,-1)
fBorder.bottom:SetPoint("TOPRIGHT",fBorder,"BOTTOMRIGHT",1,-2)
fBorder.bottom:SetColorTexture(0,0,0,1)
```

Here's an image of each one being drawn:

![borders](https://img.enkipro.com/1fcadab0ce0ba6cf128662a3fefec178.png)