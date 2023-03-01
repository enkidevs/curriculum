---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Hello World in World of Warcraft

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

Save the file.

Start the game and log in with a character.

Type "/reload" to reload the UI.

You should see the message "Hello, World!" printed to the chat window.

It would look like this:

![hello-world](https://img.enkipro.com/084b5c65da4e0b650a6c776f3435e917.png)