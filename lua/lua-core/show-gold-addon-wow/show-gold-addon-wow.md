---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Show Gold Toc File

---
## Content

In the base game, in order to see your gold, silver and copper, you would have to open your backpack.

Let's create a Lua script that displays the player's current gold on the screen.

First thing, open your AddOns folder and create a new folder called "ShowGold".
Inside it, create 2 files:
- ShowGold.lua
- ShowGold.toc

Inside the `.toc` file, we will add this:
```plain-text
## Interface: 100005
## Title: Show Gold
## Notes: Continuously Show Gold on screen
## Author: Your Name
## Version: 0.0.1

ShowGold.lua
```

You can save and close this file. Let's continue in the next insight.