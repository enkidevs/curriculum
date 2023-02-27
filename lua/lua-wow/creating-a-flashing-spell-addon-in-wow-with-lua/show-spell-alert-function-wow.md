---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# showSpellAlert Function

---
## Content

Previously we've created some empty functions[1]. Let's fill in code to the `snowSpellAlert` one. There are several ways we can show an alert.

Here's an example of printing a message to the console:
```lua
-- Function to show the spell alert
function showSpellAlert(spellName)
  -- Code to show the spell alert
  print("The spell " .. spellName .. " is ready!")
end
```

A different way, would be to create a popup, which is done using the `CreateFrame()` method.

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