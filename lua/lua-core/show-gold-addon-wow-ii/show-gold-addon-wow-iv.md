---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Show Gold Addon IV

---
## Content

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