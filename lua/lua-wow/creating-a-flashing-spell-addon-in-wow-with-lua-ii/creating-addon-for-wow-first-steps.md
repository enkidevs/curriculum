---
author: Stefan-Stojanovic
category: must-know
type: normal


---

# Creating Addons for Wow

---
## Content

First, you need to create a new addon in the WoW `addon` folder. You can do this by creating a new folder with a unique name and adding a `TOC` file to it.

Once you have your `addon` set up, you can create a new Lua file in your `addon` folder to contain your script.

In your script, you need to register for the appropriate `events` to track the cooldowns of your spells. For example, you might use the `SPELL_UPDATE_COOLDOWN` event to track the cooldowns of your spells.

When a spell's cooldown is updated, you can check if the cooldown is almost over by comparing the remaining time to a threshold. If the remaining time is less than the threshold, you can trigger the flash effect to alert the player.

To trigger the flash effect, you can use a combination of the `SetAlpha` and `SetScript` functions to change the transparency of your spell's icon and create a flashing effect.

Finally, you can clean up any resources you used in your `addon` by unregistering from any `events` you registered for and deleting any `objects` you created.

In the next insight we will see how this would work with code examples.