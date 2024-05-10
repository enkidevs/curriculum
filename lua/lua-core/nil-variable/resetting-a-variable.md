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

There are various scenarios where setting a variable to `nil` can be useful.

For instance, using `nil` can be a way to **reset a variable to a neutral state** in a loop or conditional statements.

The code below checks for whether the variable `gameState` changed and prints different outputs depending on `gameState`'s value.

```lua
-- If gameState IS nil (using an == operator)
if gameState == nil then
    print("Game state is neutral.")
-- If gameState is NOT nil
else
    print("Game state is not neutral.")
end
```

> Loops, conditional statements, and operators will be discussed later in the course.

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