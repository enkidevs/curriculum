---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Hello World in World of Warcraft II

---
## Content

Here's what you need to add to the `.toc` file:
```plain-text
## Interface: 100005
## Title: HelloWorld
## Notes: Shows a HelloWorld message on screen
## Author: Your name
## Version: 0.0.1

HelloWorld.lua
```

Each game version requires a different `interface` value that you can find by lauching the game and typing this command in chat:

```lua
/run print((select(4, GetBuildInfo())))
```