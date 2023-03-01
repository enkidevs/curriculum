---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Notes Before Making Addons

---
## Content

Before we start creating addons for WoW, we need to be aware of the version of WoW we are making an addon for.

Different versions have different spells, the same id can be used for a different spell in a differen version, some spells wont exist, etc.

Certain functions also might not work as they were deprecated/replaced with other functions.

For instance, in one update, Blizzard changed the behavior of the `setBackDrop()` abd `SetBackdropBorderColor()` for the `Frame` object so every addon that used it had to update their code.