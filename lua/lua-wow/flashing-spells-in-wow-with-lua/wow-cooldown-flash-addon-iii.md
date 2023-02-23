---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Lua in Games

---
## Content

To flash more than one spell in the same addon, you would need to modify the previous code to include multiple spells. One way to do this is to create a table of spells that you want to monitor and iterate through each of them to check if their cooldown is almost finished. Here's an example code snippet:
```lua
-- Define the spells to monitor
local spellsToMonitor = {"Frostbolt", "Fireball", "Arcane Missiles"}

-- Define a function to check the cooldown of each spell
local function checkCooldowns()
  for _, spellName in ipairs(spellsToMonitor) do
    local spellCooldown = GetSpellCooldown(spellName)
    local spellCooldownRemaining = spellCooldown - GetTime()
    
    -- If the spell cooldown is almost finished, flash the spell
    if spellCooldownRemaining <= 2 then
      -- Flash the spell
      FlashSpell(spellName)
    end
  end
end

-- Register an event to monitor the cooldowns
local frame = CreateFrame("FRAME")
frame:RegisterEvent("SPELL_UPDATE_COOLDOWN")

-- Set a handler function for the event
frame:SetScript("OnEvent", function(self, event, ...)
  -- If the event is SPELL_UPDATE_COOLDOWN, check the cooldowns
  if event == "SPELL_UPDATE_COOLDOWN" then
    checkCooldowns()
  end
end)
```

In this example, we first define a table called `spellsToMonitor` that contains the names of the spells we want to monitor. Then, in the `checkCooldowns()` function, we use a `for` loop to iterate through each spell in the table and check its cooldown. If the cooldown is almost finished, we flash the spell using the FlashSpell() function (which we assume is defined elsewhere in the addon).

We then register an event listener for the `SPELL_UPDATE_COOLDOWN` event, which is triggered whenever a spell's cooldown is updated. When the event is triggered, we call the `checkCooldowns()` function to check the cooldowns of the spells we are monitoring. If any of the spells' cooldowns are almost finished, we flash the spell.