---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Hello World in World of Warcraft IV

---

## Content

Open "HelloWorld.lua" in a text editor and paste the following code:

```lua
local function OnEvent(self, event, ...)    
    if event == "PLAYER_LOGIN" then
        print("Hello, World!")
    end
end

local f = CreateFrame("Frame")
f:RegisterEvent("PLAYER_LOGIN")
f:SetScript("OnEvent", OnEvent)
```
