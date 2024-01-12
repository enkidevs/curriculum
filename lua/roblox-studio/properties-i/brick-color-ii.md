---
author: junoocha
type: normal
category: must-know
links:
  - >-
    [BrickColor](https://create.roblox.com/docs/reference/engine/datatypes/BrickColor){website}
practiceQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
revisionQuestion:
  formats:
    - fill-in-the-gap
  context: standalone
---

# BrickColor Continuation

---

## Content

The other ways that can be used to change BrickColor is through associated numbers and RGB.

```lua
-- Change BrickColor through a color's associated number.
partVariable.BrickColor = BrickColor.new(23)

-- Change BrickColor through a color's rgb values. Must be from 0 to 1 however.
partVariable.BrickColor = BrickColor.new(0.1, 0.2, 172)
```
> The specific names of every color can be found in the **Learn More** section.

---

## Practice

Which of the options below is not a valid way to change BrickColor through coding? ???

- RGB (0-255)
- RGB (0-1)
- Color Name
- Associated Number

---

## Revision

Finish the code below. Use associated value 23 when changing BrickColor.

```lua
partVariable.??? = BrickColor.new(???)
```
- BrickColor
- 23
- Color
- "Bright Blue"
- "23"
