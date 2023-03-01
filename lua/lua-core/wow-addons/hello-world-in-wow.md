---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Hello World in World of Warcraft

---
## Content

Here's how we would create an addon that only outputs "Hello, World!" to the chat when the player logs into the game.

- Create a new folder in your WoW addons directory with the name "HelloWorld".
- Inside that folder, create a new file called "HelloWorld.lua".
- Now create another file in the same HelloWorld directory called HelloWorld.toc

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

You can set anything you want for the title, notes and author, but its best to set the actual title, a note about what the addon does and who made it.

It will return only the interface value which we will use in our `.toc` file.

As for the name at the end of the file (`HelloWorld.lua`) should be the same as your `.lua` file.

Let's fill in the `.lua` file next