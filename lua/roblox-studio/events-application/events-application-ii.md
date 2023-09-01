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

# Lava Block Continuation
---

## Content
We now need to create a way to **identify and access a player's avatar**.

In the Touched syntax, the function() parameter represents any part that triggers the Touched signal.

Additionally, you may have noticed while testing that your avatar will show up as a model[1] in the workspace. Since any body part is considered a child of the avatar, we can use parent to access the avatar.

```lua
lavaVar = game.Workspace.Lava
lavaVar.Touched:Connect(function(part)
  local avatar = part.Parent  --using local since its used only for this event function
end)
```
---

## Practice

An avatar is a ???, so to access it, we must find the ??? of the part that touches the event object.

- model
- parent
- child
- part
- character
- script

---

## Revision

When creating a block that detects if a player has touched it, the first thing the event should do is ???
- identify the part that touched it is a part of the player
- activate the desired function right away
- wait 5 seconds
- turn itself off to save resources

---

## Footnotes

[1: Model]

A model acts as a container of various parts and other similar instances. In this case, a character's avatar is a model made up of various body parts.