---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Full Addon Code

---
## Content

Here's the full addon code:
```lua
local frame = CreateFrame("Frame", nil, UIParent)
frame:SetPoint("TOPRIGHT", -60, -250)
frame:SetSize(120, 18)

frame.texture = frame:CreateTexture(nil, "BACKGROUND")
frame.texture:SetAllPoints(frame)
frame.texture:SetColorTexture(0.3, 0.2, 0.1, 0.5)

-- Create a border texture
frame.border = frame:CreateTexture(nil, "BORDER")

-- Create a border frame:
local fBorder =CreateFrame("frame",nil,frame)

-- Set its anchor points to the edges of the frame
fBorder:SetAllPoints(frame)

-- Set how frames overlap
fBorder:SetFrameStrata("BACKGROUND")

fBorder.left=fBorder:CreateTexture(nil,"BORDER")
fBorder.left:SetPoint("BOTTOMLEFT",fBorder,"BOTTOMLEFT",-2,-1)
fBorder.left:SetPoint("TOPRIGHT",fBorder,"TOPLEFT",-1,2)
fBorder.left:SetColorTexture(0,0,0,1)
fBorder.right=fBorder:CreateTexture(nil,"BORDER")
fBorder.right:SetPoint("BOTTOMLEFT",fBorder,"BOTTOMRIGHT",1,-1)
fBorder.right:SetPoint("TOPRIGHT",fBorder,"TOPRIGHT",2,1)
fBorder.right:SetColorTexture(0,0,0,1)
fBorder.top=fBorder:CreateTexture(nil,"BORDER")
fBorder.top:SetPoint("BOTTOMLEFT",fBorder,"TOPLEFT",-1,1)
fBorder.top:SetPoint("TOPRIGHT",fBorder,"TOPRIGHT",1,2)
fBorder.top:SetColorTexture(0,0,0,1)

fBorder.bottom=fBorder:CreateTexture(nil,"BORDER")
fBorder.bottom:SetPoint("BOTTOMLEFT",fBorder,"BOTTOMLEFT",-1,-1)
fBorder.bottom:SetPoint("TOPRIGHT",fBorder,"BOTTOMRIGHT",1,-2)
fBorder.bottom:SetColorTexture(0,0,0,1)

-- Create a font string to display the gold text
local fontString = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
fontString:SetAllPoints()

local function updateMoneyOutput()
  fontString:SetText(GetMoneyString(GetMoney()))
end

-- Update the gold text when the player's money changes
frame:SetScript("OnEvent", function(self, event, ...)
  if event == "PLAYER_MONEY" then
    updateMoneyOutput()
  end
end)

-- Register the event
frame:RegisterEvent("PLAYER_MONEY")
updateMoneyOutput()
```

Result:
![final](https://img.enkipro.com/82458e2e9c9f26beeab9dd163f3e44e2.png)