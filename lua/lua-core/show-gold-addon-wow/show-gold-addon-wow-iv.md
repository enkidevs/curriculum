---
author: Stefan-Stojanovic
category: must-know
type: normal

---

# Changing Position of Addon

---
## Content

Let's move the frame to be under the Map at the top right by modifying the original `SetPoint` of the frame:
```lua
-- Update the current frame code position:
frame:SetPoint("CENTER", 0, 0)
-- To:
frame:SetPoint("TOPRIGHT", -60, -250)
```

Here's how that looks:

![gold-under-map](https://img.enkipro.com/a46d9a704f547aeb7be99810abf00610.png)