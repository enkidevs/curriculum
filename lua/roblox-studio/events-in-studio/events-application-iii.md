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

# Lava Block Conclusion
---

## Content
In Roblox, **what gives an avatar functionality** is the special object: `Humanoid`. This allows a player to walk, move, and interact. We'll need to access this object in the model, and **set the character health to 0** to perfom the kill action.

> FindFirstChild() is a function used to determine whether a child exists. In this case, the child is Humanoid, and the parent is the player's avatar.

```lua
lavaVar = game.Workspace.Lava
lavaVar.Touched:Connect(function(part)
  local avatar = part.Parent  --using local since its used only for this event function
  if avatar:FindFirstChild("Humanoid") then
		avatar.Humanoid.Health = 0 --set the current health to 0, which kills the avatar
	end
end)
```
> Using an if statement ensures that the death will only be applied to models with the humanoid class, AKA user's avatars.

Congratulations! You've understood how to create kill blocks! You can play with the shape or any other properties and use it as an obstacle in your game.
---

## Practice
```lua
lavaVar = game.Workspace.Lava
lavaVar.Touched:Connect(function(part)
  local avatar = part.Parent  
  if avatar:FindFirstChild("Humanoid") then
		avatar.Humanoid.Health -= 5
	end
end)
```
In the code above, the event will cause ???
- the player to lose 5 hp everytime a body part touches lava
- the player to instantly die
- the player to instantly die when it touches lava
- the player to die 5 seconds after it touches lava

---

## Revision
```lua
lavaVar = game.Workspace.Lava
lavaVar.Touched:Connect(function(part)
  local avatar = part.Parent  --using local since its used only for this event function
  if avatar:FindFirstChild("Humanoid") then
		avatar.Humanoid.Health = 50
	end
end)
```

In the code above, the event will cause ???

- the player's health to hit 50 when it touches the object, but it won't drop any lower.
- the player to lose 50 hp everytime they touch lava
- the player to die after 50 seconds of touching lava
- the player to gain 50 hp everytime they touch lava