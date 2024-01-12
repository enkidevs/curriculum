---
author: junoocha
type: normal
category: best-practice
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Applying Multiple Scripts Continuation

---

## Content

Now that we have models, we will be **using a pairs loop** to iterate through every part in the model and apply the script to each part. 

For instance, let's code a script such that every part in a model will act as a kill brick using iterations:

```lua
local Model = game.Workspace.Model 
-- Declare Model as a variable

for i,v in pairs(Model:GetChildren()) do 
-- Use the getChildren() function to iterate through each part

	if v:IsA("BasePart") then
  -- If each child in the model is a BasePart

		v.Touched:Connect(function(part)
			local avatar = part.Parent  
			if avatar:FindFirstChild("Humanoid") then
				avatar.Humanoid.Health = 0
			end
		end)
    -- The code that kills the avatar

	end
end
```

Through iterations, we are **no longer forced to create a copy of the script for every part** that needs the specific behaviour.

---

## Practice 

To iterate through a model, you need to use... ???

- Pairs loops
- For loops
- If/else statements
- Various scripts

---

## Revision

To access a model using variables in a script, you would access it through... ???

- The hierarchy system and going through the parents
- Naming the part "Model"
- The hierarchy system
- Using Parent.()
