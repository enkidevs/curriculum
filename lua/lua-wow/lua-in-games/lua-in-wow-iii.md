---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# More WoW Addons
 
---
## Content

Here's an example of Lua code used in World of Warcraft to create an addon that shows your current level and experience points:

```lua
-- Create a new frame to display the text
local frame = CreateFrame("Frame", nil, UIParent)
frame:SetPoint("CENTER", 0, -50)
frame:SetSize(200, 50)

-- Create a new font string to display the text
local fontString = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
fontString:SetAllPoints()

-- Define a function to update the text
local function UpdateText()
  local level = UnitLevel("player")
  local xp = UnitXP("player")
  local xpMax = UnitXPMax("player")
  
  -- Update the text with the current level and experience points
  fontString:SetText("Level " .. level .. " - " .. xp .. "/" .. xpMax .. " XP")
end

-- Register for the "PLAYER_XP_UPDATE" event to update the text when the player's experience points change
frame:RegisterEvent("PLAYER_XP_UPDATE")
frame:SetScript("OnEvent", UpdateText)

-- Call the function once to initialize the text
UpdateText()
```

This addon creates a new frame and font string, and then registers for the `PLAYER_XP_UPDATE` event to update the text with the player's current level and experience points. The `UnitLevel`, `UnitXP`, and `UnitXPMax` functions are used to get the relevant information from the game.