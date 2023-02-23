---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Lua in Games

---
## Content

To add 20 spells to the addon, you can create a table to hold the spells and their respective cooldowns. Here's an example code snippet:
```lua
-- Create a table of spells and their respective cooldowns
local spells = {
  ["Spell1"] = 60,   -- Spell1 has a 60 second cooldown
  ["Spell2"] = 30,   -- Spell2 has a 30 second cooldown
  ["Spell3"] = 90,   -- Spell3 has a 90 second cooldown
  -- add more spells here...
}

-- Loop through the table and register events for each spell
for spell, cooldown in pairs(spells) do
  local spellFrame = CreateFrame("Frame")
  spellFrame:RegisterEvent("PLAYER_ENTERING_WORLD")
  spellFrame:RegisterEvent("SPELL_UPDATE_COOLDOWN")
  spellFrame:SetScript("OnEvent", function(self, event, ...)
    local remainingTime = GetSpellCooldown(spell) - GetTime()
    if remainingTime <= 2 and remainingTime > 0 then
      -- flash the spell icon or do something else to indicate the cooldown is almost up
      print(spell .. " is almost ready!")
    end
  end)
end
```
In this example, the `spells` table holds the name and cooldown of each spell, and the `for` loop registers an event handler for each spell. When an event is triggered, the `OnEvent` function checks the remaining time for each spell's cooldown, and flashes the spell icon or prints a message if the remaining time is less than or equal to 2 seconds. You can add more spells to the `spells` table to monitor more spells.