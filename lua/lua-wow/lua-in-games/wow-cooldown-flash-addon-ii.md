---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Flashing Spell on Cooldown

---
## Content

Here's an example addon for World of Warcraft that flashes a spell when it is 2 seconds away from coming off cooldown:
```lua
-- Define the spell you want to track
local spellID = 12345

-- Define the time (in seconds) when you want the spell to flash
local flashTime = 2

-- Create a frame to listen for events
local frame = CreateFrame("FRAME")

-- Set up the event listener for SPELL_UPDATE_COOLDOWN
frame:RegisterEvent("SPELL_UPDATE_COOLDOWN")

-- Define the event handler
frame:SetScript("OnEvent", function(self, event, ...)
  -- Check if the spell is on cooldown
  local start, duration, _ = GetSpellCooldown(spellID)
  local cooldown = start + duration - GetTime()
  
  if cooldown > 0 and cooldown <= flashTime then
    -- The spell is about to come off cooldown, so flash it
    -- Replace "SpellName" with the name of the spell you want to flash
    -- Replace "red" with the color you want the flash to be
    -- Replace "3" with the number of times you want the flash to occur
    UIFrameFlash(GetSpellTexture(spellID), flashTime, flashTime, 3, false, 0, 0, "red")
  end
end)
```

This addon listens for the `SPELL_UPDATE_COOLDOWN` event, which is fired whenever a spell's cooldown changes. When the event is fired, it checks the remaining cooldown time for the specified spell. If the cooldown is less than or equal to the `flashTime` value (2 seconds in this example), it flashes the spell icon in the specified color (`red` in this example). The flash occurs 3 times, and the duration of each flash is also set to `flashTime`.