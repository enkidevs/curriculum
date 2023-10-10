---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Show Gold Addon Code I

---
## Content

Let's see how we can create the `.lua` file for our Show Gold addon.

First off, let's create a frame and set its position and size:
```lua
-- Create a frame to display the gold text
local frame = CreateFrame("Frame", nil, UIParent)
-- Set the position of the frame:
frame:SetPoint("CENTER", 0, 0)
-- Set the size of the frame:
frame:SetSize(120, 18)
```

This wont visually show anything, but we will have a frame where we can display our money.