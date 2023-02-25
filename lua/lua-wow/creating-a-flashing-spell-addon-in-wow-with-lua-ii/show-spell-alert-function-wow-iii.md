---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# checkCooldown Function Frame Creation

---
## Content

Next let's add a title, message and duration to the popup:
```lua
  -- Set the title and message of the popup
  local title = "Spell Alert"
  local message = "The spell " .. spellName .. " is ready!"

  -- Add the titleText to the popup
  local titleText = popup:CreateFontString(nil, "OVERLAY", "GameFontNormal")

  -- Set the text and point of the title text:
  titleText:SetPoint("TOP", 0, -15)
  titleText:SetText(title)

  -- Set the text and point of the messageText:
  local messageText = popup:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
  messageText:SetPoint("CENTER", 0, 0)
  messageText:SetText(message)

  -- Set the duration of the popup and show it
  local duration = 3 -- in seconds
  popup:SetScript("OnShow", function()
    -- C_Timer.After is used to do something after X duration
    -- In our case, we Hide() the popup after 3 seconds
    C_Timer.After(duration, function()
      popup:Hide()
    end)
  end)
  popup:Show()
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