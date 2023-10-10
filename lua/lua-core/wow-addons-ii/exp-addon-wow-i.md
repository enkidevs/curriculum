---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Experience Addon Wow I
 
---
## Content

Here's an example of Lua code used in World of Warcraft to create an addon that shows your current level and experience points.

Let's first create the frame to display the text and the font of the text:

```lua
-- Create a new frame to display the text
local frame = CreateFrame("Frame", nil, UIParent)
frame:SetPoint("CENTER", 0, -50)
frame:SetSize(200, 50)

-- Create a new font string to display the text
local fontString = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
fontString:SetAllPoints()
```