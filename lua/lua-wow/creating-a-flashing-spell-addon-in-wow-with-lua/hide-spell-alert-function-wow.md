---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# hideSpellAlert Function

---
## Content

Previously we've populated the code for the `checkCooldown()`[1] and the `snowSpellAlert()`[2] functions. 

Let's write the code for the `hideSpellAlert` one:
```lua
-- Function to hide the spell alert
function hideSpellAlert()
  -- Code to hide the spell alert, for example:
  if SpellAlertPopup ~= nil then
    SpellAlertPopup:Hide()
  end
end
```

The `hideSpellAlert` is much shorter as the only thing it does is hide the alert if a condition is met.


---
## Footnotes

[1: checkCooldown()]
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

[2: showSpellAlert()]
```lua
-- Function to show the spell alert as a popup message
function showSpellAlert(spellName)
  -- Set the title and message of the popup
  local title = "Spell Alert"
  local message = "The spell " .. spellName .. " is ready!"

  -- Create the popup frame
  local popup = CreateFrame("Frame", "SpellAlertPopup", UIParent)
  popup:SetSize(200, 100)
  popup:SetPoint("CENTER")
  popup:SetBackdrop({
    bgFile = "Interface/DialogFrame/UI-DialogBox-Background-Dark",
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",
    tile = true,
    tileSize = 32,
    edgeSize = 32,
    insets = {
      left = 11,
      right = 12,
      top = 12,
      bottom = 11,
    },
  })
  popup:SetBackdropColor(0, 0, 0, 1)
  popup:SetBackdropBorderColor(0.4, 0.4, 0.4, 1)
  
  -- Add the title and message to the popup
  local titleText = popup:CreateFontString(nil, "OVERLAY", "GameFontNormal")
  titleText:SetPoint("TOP", 0, -15)
  titleText:SetText(title)
  local messageText = popup:CreateFontString(nil, "OVERLAY", "GameFontHighlight")
  messageText:SetPoint("CENTER", 0, 0)
  messageText:SetText(message)

  -- Set the duration of the popup and show it
  local duration = 3 -- in seconds
  popup:SetScript("OnShow", function()
    C_Timer.After(duration, function()
      popup:Hide()
    end)
  end)
  popup:Show()
end
```