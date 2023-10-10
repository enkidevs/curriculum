---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Experience Addon Wow III
 
---
## Content

Finally, let's register the event and call it once to initialize the text:
```lua
-- Register for the "PLAYER_XP_UPDATE" event to update the text when the player's experience points change
frame:RegisterEvent("PLAYER_XP_UPDATE")
frame:SetScript("OnEvent", UpdateText)

-- Call the function once to initialize the text
UpdateText()
```
This addon creates a new frame and font string, and then registers for the `PLAYER_XP_UPDATE` event to update the text with the player's current level and experience points. The `UnitLevel`, `UnitXP`, and `UnitXPMax` functions are used to get the relevant information from the game.

> Note that the variables used are actual game variables used in the game's code.

If you'd like the whole code, look at the footnote here: [1]

---

## Footnotes

[1: Full Code]

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