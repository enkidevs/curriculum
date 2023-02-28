---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# More Lua in WoW

---
## Content

In WoW, players can use addons to customize their gameplay experience. Addons are created using Lua and allow players to add features and functionality to the game. Here's an example of how a Lua script can be used to create a simple addon that displays the player's current gold on the screen:

```lua
local ADDON_NAME = "ShowGold"

-- Create a frame to display the gold text
local frame = CreateFrame("Frame", nil, UIParent)
frame:SetPoint("RIGHT", 0, -100)
frame:SetSize(200, 50)

-- Create a font string to display the gold text
local fontString = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
fontString:SetAllPoints()

local function updateMoneyOutput()
  local money = GetMoney()
  local moneyOutput =  string.format("Gold: %d, Silver: %d, Copper: %d", money / 100 / 100, (money / 100) % 100, money % 100)
  fontString:SetText(GetMoneyString(money))
end

-- Update the gold text when the player's money changes
frame:SetScript("OnEvent", function(self, event, ...)
    if event == "PLAYER_MONEY" or event == "CURRENCY_DISPLAY_UPDATE" then
        updateMoneyOutput()
    end
end)

-- Register the events
frame:RegisterEvent("PLAYER_MONEY")
frame:RegisterEvent("CURRENCY_DISPLAY_UPDATE")

-- Update the initial money output
updateMoneyOutput()
```

This script creates a new frame on the screen and adds a font string to display the player's current gold. The script then sets up an event listener that updates the gold text whenever the player's money changes.

This is just a simple example, but Lua addons can be used to do much more complex things like tracking loot, managing raid groups, and more.