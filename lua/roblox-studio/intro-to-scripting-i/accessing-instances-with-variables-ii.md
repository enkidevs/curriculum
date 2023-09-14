---
author: junoocha
type: normal
category: must-know
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Continuation on Accessing Instances Using Variables
---

## Content

To create the connection point to the baseplate, we *must create a path through the hiearchichal system* of Roblox Studio. Like a Windows file system, we **must access each parent folder** before reaching the desired file. 

In the image below, the **"parents"** are highlighted, which represent the path that must be taken.

![hierarchy-example](https://img.enkipro.com/dd2dad3eab1a4a9b0c55fb24cd067533.png)

> Remember that the explorer tab represents the entire game. Thus, the ancestor/head of the system is **game**.

For instance, if we want to access a part called "Egg" under the baseplate, it can be accessed by setting a variable equal to `game.Workspace.Baseplate.Egg`.

---

## Practice
When testing the game, a script adds a block under baseplate. The block's parent is ???, while baseplate's parent is ???.

- baseplate
- Workspace
- game
- ServerScriptService

---

## Revision

When testing the game, the user becomes an instance under Workspace. The user's parent is ???, while Workspace's parent is ???.

- Workspace
- game
- baseplate
- ServerScriptService