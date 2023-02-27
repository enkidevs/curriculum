---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# eventHandler Function

---
## Content

Previously we've populated the code for the `checkCooldown()`[1], the `snowSpellAlert()`[2], and the `hideSpellAlert()`[3] functions. 

Now we need to add an Event Handler Function.
```lua
-- Event handler function
function onEvent(event, ...)
  if event == "PLAYER_ENTERING_WORLD" or event == "PLAYER_TALENT_UPDATE" then
    -- Check cooldown status for all spells
    checkCooldown("Spell 1")
    checkCooldown("Spell 2")
    checkCooldown("Spell 3")
    -- Add more spells as needed
  elseif event == "SPELL_UPDATE_COOLDOWN" then
    local spellName = ...
    -- Check cooldown status for the updated spell
    checkCooldown(spellName)
  end
end

-- Register event handler function
local frame = CreateFrame("FRAME")
frame:RegisterEvent("PLAYER_ENTERING_WORLD")
frame:RegisterEvent("PLAYER_TALENT_UPDATE")
frame:RegisterEvent("SPELL_UPDATE_COOLDOWN")
frame:SetScript("OnEvent", onEvent)
```


We are using an event handler function to handle multiple events for individual spells. 

It checks the cooldown status for all the spells when the player enters the world or updates their talent, and then checks the cooldown for the specific spell when the `SPELL_UPDATE_COOLDOWN` event is triggered. 

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

[3: hideSpellAlert()]
```lua
-- Function to hide the spell alert
function hideSpellAlert()
  -- Code to hide the spell alert, for example:
  if SpellAlertPopup ~= nil then
    SpellAlertPopup:Hide()
  end
end
```