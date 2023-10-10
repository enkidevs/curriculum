---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Coding the Other 3 Borders

---
## Content

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