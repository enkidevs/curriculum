---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Show Gold Addon

---
## Content

Let's see how we can create the `.lua` file for our Show Gold addon.

First off, let's create a frame and set its position and size:
```lua
-- Create a frame to display the gold text
local frame = CreateFrame("Frame", nil, UIParent)
-- Set the position of the frame:
frame:SetPoint("CENTER", 0, 0)
-- Set the size of the frame:
frame:SetSize(120, 18)
```

This wont visually show anything, but we will have a frame where we can display our money.

Next we are going to create a `FontString`. This allows us to draw text inside a frame:

```lua
-- Create a font string to display the gold text
local fontString = frame:CreateFontString(nil, "OVERLAY", "GameFontNormal")
fontString:SetAllPoints()
```

Next, we need to create an onEvent script that does something when an event is triggered.

Since we are creating an addon for money, we need the `PLAYER_MONEY` event.

This event is triggered every time the money value changes, wether it is an increase or a decrease.

```lua
-- Update the gold text when the player's money changes
frame:SetScript("OnEvent", function(self, event, ...)
  if event == "PLAYER_MONEY" then
    -- function to update money:
    updateMoneyOutput()
  end
end)

-- Register the event
frame:RegisterEvent("PLAYER_MONEY")
```

The `updateMoneyOutput()` function would look like this:
```lua
local function updateMoneyOutput()
  -- Get the money from the GetMoney() method
  local money = GetMoney()
  -- convert it using the GetMoneyString() method by passing the value we got from GetMoney() as its argument
  local moneyWithIcons = GetMoneyString(money)
  -- display it in the frame by setting the text of the fontString to it
  fontString:SetText(moneyWithIcons)

  -- Or you can do it in one line like so:
  fontString:SetText(GetMoneyString(GetMoney()))
end
```

This script creates a new frame on the screen and adds a font string to display the player's current gold. The script then sets up an event listener that updates the gold text whenever the player's money changes.

Here's how that looks in game:

![show-money-no-ui](https://img.enkipro.com/6d6526066cd148fd4026ea9a2965ae53.png)