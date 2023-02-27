---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# showSpellAlert Function Frame Creation

---
## Content

Continuing from the previous insight, let's see how we can create a popup.

First, we need to create a new frame:
```lua
-- Function to show the spell alert as a popup message
function showSpellAlert(spellName)
  -- Set the title and message of the popup
  local title = "Spell Alert"
  local message = "The spell " .. spellName .. " is ready!"

  -- Create the popup frame
  local popup = CreateFrame("Frame", "SpellAlertPopup", UIParent)
end
```

Then, we need to set the frames size, background color, text size, and more:
```lua
-- set size of frame 
  popup:SetSize(200, 100)

-- set the attachment point of frame 
  popup:SetPoint("CENTER")

-- set the backdrop texture of a frame.
  popup:SetBackdrop({
    -- Texture path to use for the background
    bgFile = "Interface/DialogFrame/UI-DialogBox-Background-Dark",

    -- Texture path to use for the edges
    edgeFile = "Interface/DialogFrame/UI-DialogBox-Border",

    -- True if the background texture should tile, false if it should stretch
    tile = true,

    -- If tile is true, size of each tiled copy of the bgFile
    tileSize = 32,

    -- Size of the edgeFile (i.e. border thickness and corner size)
    edgeSize = 32,

    -- number - How far from the edges the background will be drawn (e.g. use higher values for thicker edges)
    insets = {
      left = 11,
      right = 12,
      top = 12,
      bottom = 11,
    },
  })
      --  tints the background component of a frame's backdrop
      -- The colors are in rgb order, where the 4th argument is the opaqueness
      -- (red, green, blue[, alpha])
  popup:SetBackdropColor(0, 0, 0, 1)

-- tints the border component of a frame's backdrop
-- same order of arguments as BackdropColor
  popup:SetBackdropBorderColor(0.4, 0.4, 0.4, 1)
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