---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Experience Addon Wow II
 
---
## Content

Let's now define a function that updates the text, and how the text should be updated.

```lua
-- Define a function to update the text
local function UpdateText()
  local level = UnitLevel("player")
  local xp = UnitXP("player")
  local xpMax = UnitXPMax("player")
  
  -- Update the text with the current level and experience points
  fontString:SetText("Level " .. level .. " - " .. xp .. "/" .. xpMax .. " XP")
end
```