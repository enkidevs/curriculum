---
author: Stefan-Stojanovic
category: must-know
type: normal
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone

---

# Resetting a Variable

---

## Content

There are various scenarios where setting a variable to `nil` can be useful. For instance, refreshing a variable!

Setting a variable to `nil` can be a way to **reset a variable to a neutral state**, especially if it's used in a loop or needs to be reinitialized frequently.

For instance, a game can be coded to recognize whether a variable is changed, which would result in different behavior.

```lua
-- Check if the game state is neutral
if gameState == nil then
    print("Game state is neutral.")
else
    print("Game state is not neutral.")
end
```

---

## Practice

Setting a variable to `nil` can free up memory and... ???

- Reset a **variable** to a neutral state
- Reset a **constant** to a neutral state
- Terminate the program
- Restart the program


---

## Revision

What is the purpose of setting a variable to nil in Lua? Choose the most appropriate option.

???

- Reset a variable to a neutral state
- Initialize a variable to a default value.
- Prevent the variable from being used in the program.
- Convert the variable to a string.