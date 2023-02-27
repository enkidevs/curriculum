---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# checkCooldown Function

---
## Content

Previously we've created some empty functions[1]. Let's fill in code to the `checkCooldown` one.

First thing, since we are creating addons for WoW, we will need some Wow built-in functions provided by the [WoW API](https://addonstudio.fallenworlds.org/wiki/World_of_Warcraft_API#AddOn).

For the `checkCooldown` function, we will need the `GetSpellCooldown()` and `GetTime()` functions.

`GetTime()` returns the current system uptime in seconds.

`GetSpellCooldown(spellName | spellID, "bookType")` returns data on the cooldown of the specified spell.

```lua
-- Function to check the cooldown status of a spell
function checkCooldown(spellName)
  -- startTime corresponds to the time the cooldown was initiated/spell was thrown
  -- duration corresponds to the time until the spell can be cast again. 0 if spell is ready
  -- enabled is either 0 or 1. 0 if the spell is active and 1 otherwise

  local startTime, duration, enabled = GetSpellCooldown(spellName)
  
  -- check if cooldown is 0
  if duration == 0 then
    -- Spell is ready
    hideSpellAlert()
  else
  -- otherwise, calculate the time left by taking the startTime of the spell plus its cooldown duration and subtracting the current time
    local timeLeft = startTime + duration - GetTime()
    
    if timeLeft <= 2 then
      -- Spell is about to be ready
      showSpellAlert(spellName)
    else
      -- Spell is still on cooldown
      hideSpellAlert()
    end
  end
end
```

---
## Footnotes

[1: Empty Functions]
```lua
-- Function to show the spell alert
function showSpellAlert(spellName)
  -- Code to show the spell alert
end

-- Function to hide the spell alert
function hideSpellAlert()
  -- Code to hide the spell alert
end

-- Function to check the cooldown status of a spell
function checkCooldown(spellName)
  -- Code to check the spell cooldown 
end
```