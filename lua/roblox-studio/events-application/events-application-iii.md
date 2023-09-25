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
In Roblox, **what gives an avatar functionality** is the special object: `Humanoid`. This allows a player to walk, move, and interact. We'll need to access this object in the model and **set the character health to 0** to perfom the kill action.

> FindFirstChild() is a function used to determine whether a child exists. In this case, the child is Humanoid, and the parent is the player's avatar.

```lua
lavaVar = game.Workspace.Lava
lavaVar.Touched:Connect(function(part)
  local avatar = part.Parent  --Using local since its used only for this event function.
  if avatar:FindFirstChild("Humanoid") then
		avatar.Humanoid.Health = 0 --Set the current health to 0, which kills the avatar.
	end
end)
```
> Using an if statement ensures that the death will only be applied to models with the humanoid class, AKA user's avatars.

Congratulations! You've understood how to create kill blocks! You can play with the shape or any other properties and use it as an obstacle in your game.

![lava-gif](https://img.enkipro.com/95acff9ea681cb8b823bec26e63a0fa3.gif)

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
In the code above, the event will cause... ???
- The player to lose 5 hp everytime a body part touches lava
- The player to instantly die
- The player to instantly die when it touches lava
- The player to die 5 seconds after it touches lava

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

In the code above, the event will cause... ???

- The player's health to hit 50 when it touches the object, but it won't drop any lower.
- The player to lose 50 hp everytime they touch lava
- The player to die after 50 seconds of touching lava
- The player to gain 50 hp everytime they touch lava