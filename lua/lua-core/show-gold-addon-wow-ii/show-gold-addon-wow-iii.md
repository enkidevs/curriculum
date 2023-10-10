---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Show Gold Addon III

---
## Content

Next, we need to **create an onEvent script** that does something when an event is triggered.

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