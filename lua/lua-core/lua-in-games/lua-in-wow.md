---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Hello World in World of Warcraft

---
## Content

Lua can be used to add addons to the popular World Of Warcraft game.
Here's an example:

- Create a new folder in your WoW addons directory with any name you like (e.g., "MyAddon").
- Inside that folder, create a new file called "MyAddon.lua".
- Open "MyAddon.lua" in a text editor and paste the following code:

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

- Save the file and exit the text editor.
- Start the game and log in with a character.
- Type "/reload" to reload the UI.
- You should see the message "Hello, World!" printed to the chat window.

This addon creates a new frame (a graphical object) and registers it to listen for the `"PLAYER_LOGIN"` event. When that event is fired (i.e., when the player logs into the game), the `"OnEvent"` function is called, which prints the message `"Hello, World!"` to the chat window.