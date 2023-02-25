---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# checkCooldown Function Frame Creation

---
## Content

The whole `showSpellAlert` function would look like this:
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